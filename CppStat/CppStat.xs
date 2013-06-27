#ifdef __cplusplus
extern "C" {
#endif

#include "EXTERN.h"
#include "perl.h"

#ifdef __cplusplus
}
#endif

#include "XSUB.h"
#include "ppport.h"

#include <algorithm>
#include <vector>

struct Summator {
    Summator() : sum(0) { }
    void operator() (double val) { sum += val }
    double sum;
};

class CppStat {
public:
    CppStat() : values() { }
    ~CppStat() { }

    void add(double val) { values.push_back(val); }
    double avg() const {
        Summator s;
        std::for_each(values.begin(), values.end(), s);
        return s.sum / values.size();
    }
        
private:
    std::vector<double> values;
};

MODULE = CppStat        PACKAGE = CppStat

void
CppStat::new();

void
CppStat::DESTROY();

void
CppStat::add(double val);

double
CppStat::avg();
