#include <PublicFunctions.h>
#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_CASE( TestGetOne )
{
	BOOST_CHECK_EQUAL(1, PublicFunctions::GetOne());
}

BOOST_AUTO_TEST_CASE( TestGetTwo )
{
	BOOST_CHECK_EQUAL(2, PublicFunctions::GetTwo());
}