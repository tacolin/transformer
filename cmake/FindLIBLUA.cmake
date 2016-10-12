IF (LIBLUA_INCLUDE_DIR)
  # Already in cache, be silent
  SET(LIBLUA_FIND_QUIETLY TRUE)
ENDIF (LIBLUA_INCLUDE_DIR)

FIND_PATH(LIBLUA_INCLUDE_DIR lualib.h)

SET(LIBLUA_NAMES lua)
FIND_LIBRARY(LIBLUA_LIBRARY NAMES ${LIBLUA_NAMES} )

# handle the QUIETLY and REQUIRED arguments and set LIBLUA_FOUND to TRUE if 
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LIBLUA DEFAULT_MSG LIBLUA_LIBRARY LIBLUA_INCLUDE_DIR)

IF(LIBLUA_FOUND)
  SET( LIBLUA_LIBRARIES ${LIBLUA_LIBRARY} )
ELSE(LIBLUA_FOUND)
  SET( LIBLUA_LIBRARIES )
ENDIF(LIBLUA_FOUND)

MARK_AS_ADVANCED( LIBLUA_LIBRARIES LIBLUA_INCLUDE_DIR )
