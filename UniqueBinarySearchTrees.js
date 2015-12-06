/**
 *  * @param {number} n
 *   * @return {number}
 *    */
var numTrees = function(n) {
    f = [1,1];
    for(var i = 2;i <= n;i++)
    {
       f[i]=0;
       for(var j = 0;j < i;j++)
          f[i] += f[j] * f[i-j-1];
    }
   return f[n];
};
