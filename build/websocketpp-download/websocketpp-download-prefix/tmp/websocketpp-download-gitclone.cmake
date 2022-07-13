
if(NOT "/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/websocketpp-download/websocketpp-download-prefix/src/websocketpp-download-stamp/websocketpp-download-gitinfo.txt" IS_NEWER_THAN "/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/websocketpp-download/websocketpp-download-prefix/src/websocketpp-download-stamp/websocketpp-download-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/websocketpp-download/websocketpp-download-prefix/src/websocketpp-download-stamp/websocketpp-download-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/sleepy-discord/deps/websocketpp"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/sleepy-discord/deps/websocketpp'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --config "advice.detachedHead=false" "https://github.com/zaphoyd/websocketpp.git" "websocketpp"
    WORKING_DIRECTORY "/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/sleepy-discord/deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/zaphoyd/websocketpp.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout master --
  WORKING_DIRECTORY "/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/sleepy-discord/deps/websocketpp"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'master'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/sleepy-discord/deps/websocketpp"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/sleepy-discord/deps/websocketpp'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/websocketpp-download/websocketpp-download-prefix/src/websocketpp-download-stamp/websocketpp-download-gitinfo.txt"
    "/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/websocketpp-download/websocketpp-download-prefix/src/websocketpp-download-stamp/websocketpp-download-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/websocketpp-download/websocketpp-download-prefix/src/websocketpp-download-stamp/websocketpp-download-gitclone-lastrun.txt'")
endif()

