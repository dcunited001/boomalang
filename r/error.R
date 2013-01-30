
# Error Handling
#---------------------------------

# Try Package
# http://biocodenv.com/wordpress/?p=15

# warning(…) — generates warnings
# stop(…) — generates errors
# suppressWarnings(expr) — evaluates expression and ignores any warnings
# tryCatch(…) — evaluates code and assigns exception handlers

# Error Handling Examples:
#      tryCatch(expr, ..., finally)
#      withCallingHandlers(expr, ...)
#      signalCondition(cond)
#      simpleCondition(message, call = NULL)
#      simpleError    (message, call = NULL)
#      simpleWarning  (message, call = NULL)
#      simpleMessage  (message, call = NULL)
#      as.character(x, ...) ## S3 method for class 'condition'
#      as.character(x, ...) ## S3 method for class 'error'
#      print(x, ...) ## S3 method for class 'condition'
#      print(x, ...) ## S3 method for class 'restart'
#      conditionCall(c)
#      conditionCall(c) ## S3 method for class 'condition'
#      conditionMessage(c)
#      conditionMessage(c) ## S3 method for class 'condition'
#      withRestarts(expr, ...)

# tryCatch() Arguments:
#        c: a condition object.
#     call: call expression.
#     cond: a condition object.
#     expr: expression to be evaluated.
#  finally: expression to be evaluated before returning or exiting.
#        h: function.
#  message: character string.
#      msg: character string.
#     name: character string naming a restart.
#        r: restart object.
#        x: object.
#      ...: additional arguments; see details below.
