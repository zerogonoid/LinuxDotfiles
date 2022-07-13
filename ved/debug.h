#include <bits/stdc++.h>
#define _GLIBCXX_DEBUG
using namespace std;

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
  for (const auto &x : val) {
    if (!first) {
      cerr << ", ";
    } else {
      first = false;
    }
    debug_print(x);
  }
  cerr << "}";
}

void debug_print_collection() {
  cerr << endl;
}

template<typename First, typename... Args>
  void debug_print_collection(First val, Args... args) {
  cerr << " ";
  debug_print(val);
  debug_print_collection(args...);
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
               __attribute__ ((unused)) int LINE_NUM) { cerr << endl; }
template <typename Head, typename... Tail>
void debug_out(vector<string> args, int idx, int LINE_NUM, Head H, Tail... T) {
  if(idx > 0) cerr << ", "; else cerr << "Line(" << LINE_NUM << ") ";
  cerr << args[idx] << " = ";
  debug_print(H);
  debug_out(args, idx + 1, LINE_NUM, T...);
}

#define deb(...) debug_out(vec_splitter(#__VA_ARGS__), 0, __LINE__, __VA_ARGS__)
