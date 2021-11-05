/**
 * @name Construction of a cookie using user-supplied input.
 * @description Constructing cookies from user input may allow an attacker to perform a Cookie Poisoning attack.
 * @kind problem
 * @problem.severity error
 * @id py/cookie-injection
 * @tags security
 *       external/cwe/cwe-614
 */

// determine precision above
import python
import semmle.python.dataflow.new.DataFlow
import experimental.semmle.python.Concepts
import experimental.semmle.python.CookieHeader
import experimental.semmle.python.security.injection.CookieInjection

from
  CookieInjectionFlowConfig config, DataFlow::PathNode source, DataFlow::PathNode sink,
  string insecure
where
  config.hasFlowPath(source, sink) and
  if exists(sink.getNode().(CookieSink))
  then insecure = "and its " + sink.getNode().(CookieSink).getFlag() + " flag is not properly set"
  else insecure = ""
select sink.getNode(), "Cookie is constructed from a", source.getNode(), "user-supplied input",
  insecure
