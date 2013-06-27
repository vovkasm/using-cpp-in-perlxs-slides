#ifdef __cplusplus
extern "C" {
#endif

#include "EXTERN.h"
#include "perl.h"

#ifdef __cplusplus
}
#endif

#include "XSUB.h"

#include <numeric>
#include <vector>

class CppStat {
public:
    CppStat() : values() { }
    ~CppStat() { }

    void add(double val) { values.push_back(val); }
    double avg() const {
        return std::accumulate(values.begin(), values.end(), 0.0) / values.size();
    }
        
private:
    std::vector<double> values;
};

MODULE = CppStat        PACKAGE = CppStat

CppStat*
CppStat::new();

void
CppStat::DESTROY();

void
CppStat::add(double val);

double
CppStat::avg();
