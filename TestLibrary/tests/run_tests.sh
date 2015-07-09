#!/usr/bin/env sh

function find_boost()
{
	local common_boost_locations=("/usr/local/Cellar/boost/")
	local location=""
	for loc in ${common_boost_locations[@]}; do
		if [[ -d $loc ]]; then
			version=$(ls $loc | sort -nr | head -1)
			location="${loc}${version}"
			break
		fi
	done
	echo ${location}
}

function main()
{
	local test_folder="${SRCROOT}/tests"
	for test in "$test_folder"/*.cpp; do
		local test_name=$(basename -s .cpp ${test})
		local test_path="${BUILT_PRODUCTS_DIR}/${test_name}"
		
		local preprocessor_definitions=""
		for def in ${GCC_PREPROCESSOR_DEFINITIONS[@]}; do
			preprocessor_definitions="${preprocessor_definitions} -D${def}"
		done
		
		local search_paths=""
		for spath in ${HEADER_SEARCH_PATHS[@]}; do
			search_paths="${search_paths} -I${spath}"
		done
		
		local boost_root=$(find_boost)
		local boost_flags=$(cat <<END
-L${boost_root}/lib \
-lboost_unit_test_framework \
-I${boost_root}/include \
-DBOOST_TEST_MAIN \
-DBOOST_TEST_DYN_LINK
END)
		
		g++ \
			-stdlib=${CLANG_CXX_LIBRARY} \
			-isysroot ${SDKROOT} \
			-L"${BUILT_PRODUCTS_DIR}" \
			-o "${test_path}" \
			${boost_flags} \
			${OTHER_LDFLAGS} \
			${preprocessor_definitions} \
			${search_paths} \
			"${test}"
		${test_path}
	done
}

main "$@"
