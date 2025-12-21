#include <math.h>
#include <stdio.h>
#include <limits.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#define FOR(x, a, b) for (int x = (a); (x) <= (b); ++(x))
#define FOD(x, a, b) for (int x = (a); (x) >= (b); --(x))
#define REP(x, a, b) for (int x = (a); (x) < (b); ++(x))
#define RED(x, a, b) for (int x = (a); (x) > (b); --(x))
#define FOE(x, a)    for (auto &x : (a))
#define MAXN (int)2e5 + 7
#define ll long long
#define Y  second
#define X  first

const ll  MOD  = 1e9 + 7;

void solve(void){
    /*Code Here*/
}

int main(void){
    #ifdef  IS_CHIRO
        freopen("INPUT.INP", "r", stdin);
        freopen("OUTPUT.OUT", "w", stdout);
    #endif
    int t; scanf("%d", &t);
    FOR(i, 1, t)
        solve();
    return 0;
}
