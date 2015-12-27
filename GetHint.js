/**
 * @param {string} secret
 * @param {string} guess
 * @return {string}
 */
var getHint = function(secret, guess) {
    record = [new Array(10).fill(0),new Array(10).fill(0)];
    a = 0;
    for(i=0;i<secret.length;i++){
        if(secret[i] == guess[i])
            a++;
        record[0][secret[i]] += 1;
        record[1][guess[i]] += 1;
    }
    b = 0;
    for(i=0;i<10;i++)
        if(record[0][i] < record[1][i])
            b+=record[0][i];
        else
            b+=record[1][i];
    b -=  a;
    return a+'A'+b+'B'
};
