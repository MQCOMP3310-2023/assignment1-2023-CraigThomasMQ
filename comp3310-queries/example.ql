/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

 from MethodAccess ma, Method method
 where
        ma.getMethod() = method and
        (
            method.hasName("println")
            and method.getDeclaringType().hasQualifiedName("java.lang", "System")
        ) or (
            method.hasName("printStackTrace")
            and method.getDeclaringType().hasQualifiedName("java.lang", "Throwable")
        )
 select ma, method
 

