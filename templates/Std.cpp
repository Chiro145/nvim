#include <bits/stdc++.h>

using namespace std;

template<typename T,typename...A>void print(const T&t,const A&...a){
std::cout<<t;((std::cout<<' '<<a),...);std::cout<<'\n';}
template<typename...A>void fprint(A&&...a){(cout<<...<<a);}
template<typename...A>void scan(A&...a){((cin>>a),...);}
template<typename...A> void debug(char l,[[maybe_unused]]A...a){
#ifdef IS_CHIRO
cout<<"[DEBUG "<<char(l+65)<<"] ";((cout<<a<<" "),...);cout<<'\n';
#endif
} 
#define FOR(x, a, b) for (int x = (a); (x) <= (b); ++(x))
#define FOD(x, a, b) for (int x = (a); (x) >= (b); --(x))
#define REP(x, a, b) for (int x = (a); (x) < (b); ++(x))
#define RED(x, a, b) for (int x = (a); (x) > (b); --(x))
#define FOE(x, a)    for (auto &x : (a))
#define ll long long
#define Y  second
#define X  first

const ll  MOD  = 1e9 + 7;
const int MAXN = 2e5 + 7;

void solve(void){
    /*Code Here*/
}

int main(void){
    #ifdef IS_CHIRO
        freopen("INPUT.INP", "r", stdin);
        freopen("OUTPUT.OUT", "w", stdout);
    #endif
    ios_base::sync_with_stdio(false);
    cin.tie(0); cout.tie(0);
    int t; scan(t);
    FOR(i, 1, t)
        solve();
    return 0;
}
