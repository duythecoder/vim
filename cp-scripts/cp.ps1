$dir = "D:\CP\"
$nm = $args[0]
$cpp = $args[1]
$fol = [System.String]::Concat($dir,$nm)
New-Item -Path $fol -ItemType Directory
$fp = [System.String]::Concat('"D:/CP/',$nm,"/",$cpp,'.exe"')
$ip1 = @'
{
  "configurations": {
    "launch": {
      "adapter": "CodeLLDB",
      "configuration": {
        "request": "launch",
        "program": 
'@

$ip2 = @'

      }
    }
  }
}
'@
$ip3 = [System.String]::Concat($ip1, $fp, $ip2)
$js = [System.String]::Concat($dir,$nm,"\.vimspector.json")
$ip3 | Out-File -FilePath $js
$dc = @'
#include<bits/stdc++.h>
using namespace std;

#define fastio ios_base::sync_with_stdio(0); cin.tie(0); cout.tie(0);
#define ln "\n"
#define sp " "
#define fpp(a, b, c) for (int a = b; a <= c; a++)
#define fmm(a, b, c) for (int a = b; a >= c; a--)
#define fileio freopen("input.txt", "r", stdin); freopen("output.txt", "w", stdout);
#define printarr(arr, st, en) fpp(i, st, en) cout << arr[i] << sp;

#define vt vector
#define pb push_back
#define sz(A) A.size()

#define ll long long
#define ull unsigned long long

const int mod = 1e9 + 7;
const int mxn = 1e5 + 1;

int t;

void solve(){

}

void input(){
    cin >> t;
    while (t--){
        

	solve();
    }
}

int main(){
    fastio;
    input();
}
'@
$dcp = [System.String]::Concat($dir, $nm, "\", $cpp, ".cpp")
$dc | Out-File -FilePath $dcp
