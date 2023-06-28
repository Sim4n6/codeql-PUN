import java
import semmle.code.java.security.WeakRandomnessQuery
import TestUtilities.InlineExpectationsTest

module WeakRandomTest implements TestSig {
  string getARelevantTag() { result = "hasWeakRandomFlow" }

  predicate hasActualResult(Location location, string element, string tag, string value) {
    tag = "hasWeakRandomFlow" and
    exists(DataFlow::Node sink | WeakRandomnessFlow::flowTo(sink) |
      sink.getLocation() = location and
      element = sink.toString() and
      value = ""
    )
  }
}

import MakeTest<WeakRandomTest>
