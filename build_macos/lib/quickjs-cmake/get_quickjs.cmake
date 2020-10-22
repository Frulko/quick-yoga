# Copyright (c) 2020 Kosaki Mezumona
# This cmake script is distributed under the MIT License.
# See LICENSE for more details.
cmake_minimum_required(VERSION 3.2)
set(quickjs_url https://bellard.org/quickjs/quickjs-2020-07-05.tar.xz)
set(quickjs_sha1 371eae0896cc9e9f50864cb34f37d9481d843ce1)
set(quickjs_extras_url https://bellard.org/quickjs/quickjs-extras-2020-07-05.tar.xz)
set(quickjs_extras_sha1 211e43a5638668c80c8d438a3065660ab3af96df)
set(quickjs_extract_dir /Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/sources)
set(quickjs_sources /Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/sources/quickjs-2020-07-05/quickjs.h;/Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/sources/quickjs-2020-07-05/quickjs-libc.h;/Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/sources/quickjs-2020-07-05/quickjs.c;/Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/sources/quickjs-2020-07-05/libregexp.c;/Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/sources/quickjs-2020-07-05/libunicode.c;/Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/sources/quickjs-2020-07-05/libbf.c;/Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/sources/quickjs-2020-07-05/cutils.c;/Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/sources/quickjs-2020-07-05/quickjs-libc.c)

set(must_extract FALSE)
set(quickjs_tar /Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/quickjs.tar.xz)
set(quickjs_extras_tar /Users/guillaumedumoulin/Desktop/app/build_macos/lib/quickjs-cmake/quickjs-extra.tar.xz)

if(NOT EXISTS ${quickjs_tar})
	file(DOWNLOAD
		${quickjs_url}
		${quickjs_tar}
		EXPECTED_HASH SHA1=${quickjs_sha1}
	)
	set(must_extract TRUE)
endif()

if(NOT EXISTS ${quickjs_extras_tar})
	file(DOWNLOAD
		${quickjs_extras_url}
		${quickjs_extras_tar}
		EXPECTED_HASH SHA1=${quickjs_extras_sha1}
	)
	set(must_extract TRUE)
endif()

foreach(source IN LISTS quickjs_sources)
	if (NOT EXISTS ${source})
		set(must_extract TRUE)
		break()
	endif()
endforeach()


if (must_extract)
	execute_process(COMMAND ${CMAKE_COMMAND} -E remove_directory ${quickjs_extract_dir})
	execute_process(COMMAND ${CMAKE_COMMAND} -E make_directory ${quickjs_extract_dir})
	execute_process(
		COMMAND ${CMAKE_COMMAND} -E tar xJ ${quickjs_tar}
		WORKING_DIRECTORY ${quickjs_extract_dir}
	)
	execute_process(
		COMMAND ${CMAKE_COMMAND} -E tar xJ ${quickjs_extras_tar}
		WORKING_DIRECTORY ${quickjs_extract_dir}
	)
endif()
