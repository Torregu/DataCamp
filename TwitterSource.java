/**
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * @version 1.0 2.12.22
 * @author asolerib@uoc.edu , revised sgraul@uoc.edu
 */

//https://code.google.com/archive/p/json-simple/
//https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/quick-start/sampled-stream
//https://developer.twitter.com/en/docs/twitter-api/tweets/volume-streams/api-reference/get-tweets-sample-stream#tab2
//https://developer.twitter.com/en/docs/twitter-api/tweets/filtered-stream/api-reference/get-tweets-search-stream-rules
//https://developer.twitter.com/en/docs/twitter-api/data-dictionary/using-fields-and-expansions

package com.cloudera.flume.source;

import java.util.HashMap;
import java.util.Map;

import org.apache.flume.Context;
import org.apache.flume.Event;
import org.apache.flume.EventDrivenSource;
import org.apache.flume.channel.ChannelProcessor;
import org.apache.flume.conf.Configurable;
import org.apache.flume.event.EventBuilder;
import org.apache.flume.source.AbstractSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.SimpleDateFormat;  
import java.util.Date; 
import java.text.DateFormat;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.HttpClients;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URISyntaxException;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;

//Libraries to modify JSON
import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import org.json.simple.parser.ParseException;
import org.json.simple.parser.JSONParser;

/**
 * A Flume Source, which pulls data from Twitter's streaming API. Currently,
 * this only supports pulling from the sample API, and only gets new status
 * updates.
 */
public class TwitterSource extends AbstractSource
    implements EventDrivenSource, Configurable {

  public static final String ANSI_GREEN = "\u001B[32m";
  public static final String ANSI_YELLOW = "\u001B[33m";
  public static final String ANSI_BLUE = "\u001B[34m";
  public static final String ANSI_RESET = "\u001B[0m";


  private static final Logger logger =
      LoggerFactory.getLogger(TwitterSource.class);

  /** Information necessary for accessing the Twitter API */
  private String consumerKey;
  private String consumerSecret;
  private String accessToken;
  private String accessTokenSecret;
  private String bearerToken;


  private String[] keywords;

  /** The actual Twitter stream. It's set up to collect raw JSON data */
  //private  TwitterStream twitterStream;
  private double READ_LIMIT = 0;

  /**
   * The initialization method for the Source. The context contains all the
   * Flume configuration info, and can be used to retrieve any configuration
   * values necessary to set up the Source.
   */
  @Override
  public void configure(Context context) {
    bearerToken =  context.getString("BEARER_TOKEN");
    READ_LIMIT =  Double.parseDouble(context.getString("READ_LIMIT"));   
    
    if(READ_LIMIT == -1){
        READ_LIMIT = Double.POSITIVE_INFINITY;
    }

    System.out.println(ANSI_GREEN+"CONFIGURACIO"+ANSI_RESET);
    System.out.println("***************************************");
    System.out.println(context);
    System.out.println("***************************************");    
    
    String keywordString = context.getString(TwitterSourceConstants.KEYWORDS_KEY, "");
    if (keywordString.trim().length() == 0) {
        keywords = new String[0];
    } else {
      keywords = keywordString.split(",");
      for (int i = 0; i < keywords.length; i++) {
        keywords[i] = keywords[i].trim();
      }
    }    
  }

  /**
   * Start processing events. This uses the Twitter Streaming API to sample
   * Twitter, and process tweets.
   */
  @Override
  public void start() {
    // The channel is the piece of Flume that sits between the Source and Sink,
    // and is used to process events.
    final ChannelProcessor channel = getChannelProcessor();
    final Map<String, String> headers = new HashMap<String, String>();

    if (null == bearerToken) {
        System.out.println("There was a problem getting your bearer token.");
    }
    
    HttpClient httpClient = HttpClients.custom()
        .setDefaultRequestConfig(RequestConfig.custom()
            .setCookieSpec(CookieSpecs.STANDARD).build())
        .build();

    try{
        URIBuilder uriBuilder = new URIBuilder("https://api.twitter.com/2/tweets/sample/stream?user.fields=name,username,location,public_metrics&expansions=author_id&tweet.fields=created_at,lang,public_metrics,referenced_tweets");
        
        HttpGet httpGet = new HttpGet(uriBuilder.build());
        httpGet.setHeader("Authorization", String.format("Bearer %s", bearerToken));    
        
        HttpResponse response = httpClient.execute(httpGet);
        
        HttpEntity entity = response.getEntity();
        if (null != entity) {
            BufferedReader reader = new BufferedReader(new InputStreamReader((entity.getContent())));
            String line = reader.readLine();
            int num_tweets = 0;      
            while (line != null & num_tweets<READ_LIMIT) {               
                
                JSONObject tweet = (JSONObject) new JSONParser().parse(line);
                JSONObject data = ((JSONObject)tweet.get("data"));
                if(data.get("referenced_tweets")==null){   
                    if(data.get("lang").toString().equals("en")){
                    
                        System.out.println("Tweet arrived: number " + String.valueOf(num_tweets+1) + " !!!!!!");
                        System.out.println(line);                                    
                    
                                               
                        //Extract and Parse Tweet info
                        JSONObject filtered_tweet = new JSONObject();                    
                        JSONObject filtered_user = new JSONObject();                        
                        JSONObject user = (JSONObject)tweet.get("includes");
                                                
                        user = (JSONObject) ((java.util.List)user.get("users")).get(0);                         
                        JSONObject public_metrics = (JSONObject)user.get("public_metrics");                        
                        filtered_tweet.put("created_at", data.get("created_at"));
                        filtered_tweet.put("text", data.get("text"));
                        filtered_tweet.put("lang", data.get("lang"));
                        filtered_user.put("id", user.get("id"));
                        filtered_user.put("screen_name", user.get("username"));
                        filtered_user.put("followers_count", public_metrics.get("followers_count"));
                        filtered_user.put("following_count", public_metrics.get("following_count"));                        
                        filtered_tweet.put("user", filtered_user);                                                              
                                
                        //Adjust data formats
                        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
                        Date createdAt = sdf.parse(data.get("created_at").toString());                        
                        
                        //Transfer tweet to Flume                        
                        headers.put("timestamp", String.valueOf(createdAt.getTime()));
                        Event event = EventBuilder.withBody(filtered_tweet.toString().getBytes(), headers);
                        channel.processEvent(event);
                        
                        num_tweets++;                        
                        System.out.println(ANSI_YELLOW+"START DELAY"+ANSI_RESET);
                        int counts = 0; 
                        //cada 20s hacemos la peticion de un tweet para no superar rate
                        while(counts < 20){
                            Thread.sleep(1000);
                            System.out.println(ANSI_YELLOW+counts+"s DELAY"+ANSI_RESET);
                            counts ++;
                        }   
                         
                    }
                }                                   
                line = reader.readLine();
            }
        } 
        stop();
    }

    catch(Exception e){
        System.out.println(ANSI_YELLOW+"EXCEPCIO GENERAL"+ANSI_RESET);
        e.printStackTrace();
        stop();
    }

    super.start();

  }

  /**
   * Stops the Source's event processing and shuts down the Twitter stream.
   */
  @Override
  public void stop() {
    System.out.println("!!!!!!!!!!!!!!Shutting down Twitter sample stream...");
    System.out.println("!!!!!!!!!!!!!!Shutting down Twitter sample stream...");
    System.out.println("!!!!!!!!!!!!!!Shutting down Twitter sample stream...");    
    System.out.println("!!!!!!!!!!!!!!Shutting down Twitter sample stream...");
    super.stop();
  }
}
