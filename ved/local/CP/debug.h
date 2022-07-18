#include <bits/stdc++.h>
#define _GLIBCXX_DEBUG
using namespace std;

const char* LAST_LINE = "\033[1;32m--------------------------\033[0m\n";

void debug_print(string s) { cerr << "\"" << s << "\""; }
void debug_print(const char* s) { debug_print((string)s); }
void debug_print(bool val) { cerr << (val ? "true" : "false"); }
void debug_print(int val) { cerr << val; }
void debug_print(double val) { cerr << val; }
void debug_print(long long val) { cerr << val; }
void debug_print(long double val) { cerr << val; }

template<typename F, typename S>
void debug_print(pair<F, S> val) {
  cerr << "(";
  debug_print(val.first);
  cerr << ", ";
  debug_print(val.second);
  cerr << ")";
}

void debug_print(vector<bool> val) {
  cerr << "{";
  bool first = true;
  for (bool x : val) {
    if (!first) {
      cerr << ", ";
    } else {
      first = false;
    }
    debug_print(x);
  }
  cerr << "}";
}

template<typename T>
void debug_print(T val) {
  cerr << "{";
  bool first = true;
  for (const auto& x : val) {
    if (!first) {
      cerr << ", ";
    } else {
      first = false;
    }
    debug_print(x);
  }
  cerr << "}";
}

vector<string> vec_splitter(string s) {
  s += ',';
  vector<string> res;
  while(!s.empty()) {
    res.push_back(s.substr(0, s.find(',')));
    s = s.substr(s.find(',') + 1);
  }
  return res;
}
void debug_out(
  vector<string> __attribute__ ((unused)) args,
  __attribute__ ((unused)) int idx,
  __attribute__ ((unused)) int LINE_NUM) { cerr << "\033[0m\n"; }
template <typename Head, typename... Tail>
void debug_out(vector<string> args, int idx, int LINE_NUM, Head H, Tail... T) {
  if(idx > 0) cerr << ", "; else cerr << "\033[2;36m" << "Line(" << LINE_NUM << ") ";
  cerr << args[idx] << " = ";
  debug_print(H);
  debug_out(args, idx + 1, LINE_NUM, T...);
}

#define deb(...) debug_out(vec_splitter(#__VA_ARGS__), 0, __LINE__, __VA_ARGS__)


void out(const int& type) {
  static int casecount(0);
  if (type == 0) {
    cout << "\033[32m" << "--------------------------" << "Case#" << ++casecount << "\033[0m" <<  '\n';
  } else if (type == 1) {
    cout << "\033[1;32m" << "--------------------------" << "\033[0m" <<  '\n';
    cerr << "finished in " << "\033[1;31m" << clock() * 1.0 / CLOCKS_PER_SEC << "\033[0m" << " sec" << endl;
  }
}
