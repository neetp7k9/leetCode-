class Solution {
public:
    double myPow(double x, int n) {
        if(n==0)
            return 1;
        if(n<0){
	        double m = myPow(x,(-n)/2);
        	return ((-n)%2==0)?1/(m*m):1/(m*m*x);
        }
        double m = myPow(x,n/2);
        return (n%2==0)?m*m:m*m*x;
    }
};
