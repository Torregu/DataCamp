+ Convert `heights` and `positions`, which are regular lists, to numpy arrays. Call them `np_heights` and `np_positions`.
+ Extract all the heights of the goalkeepers. You can use a little trick here: use `np_positions == 'GK'` as an index for `np_heights`. Assign the result to `gk_heights`.
+ Extract all the heights of all the other players. This time use `np_positions != 'GK'` as an index for `np_heights`. Assign the result to `other_heights`.
+ Print out the median height of the goalkeepers using [**`np.median()`**](http://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.median.html). Replace `None` with the correct code.
+ Do the same for the other players. Print out their median height. Replace `None` with the correct code.