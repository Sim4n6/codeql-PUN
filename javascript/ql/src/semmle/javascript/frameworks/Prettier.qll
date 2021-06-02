/**
 * Provides classes and predicates for working with the [prettier](https://www.npmjs.com/package/prettier) library.
 */

import javascript

/** Provides classes and predicates modelling aspects of the [prettier](https://www.npmjs.com/package/prettier) library. */
private module Prettier {
  /**
   * A taint step from the [prettier API](https://prettier.io/docs/en/api.html).
   */
  private class PrettierTaintStep extends TaintTracking::SharedTaintStep {
    override predicate step(DataFlow::Node pred, DataFlow::Node succ) {
      exists(API::CallNode call |
        call = API::moduleImport("prettier").getMember("format").getACall()
      |
        pred = call.getArgument(0) and
        succ = call
      )
      or
      exists(API::CallNode call |
        call = API::moduleImport("prettier").getMember("formatWithCursor").getACall()
      |
        pred = call.getArgument(0) and
        succ = call.getReturn().getMember("formatted").getAnImmediateUse()
      )
    }
  }

  private import semmle.javascript.security.dataflow.TaintedPathCustomizations::TaintedPath as TaintedPath

  /**
   * An argument given to the `prettier` library specificing the location of a config file.
   */
  private class PrettierFileSink extends TaintedPath::Sink {
    PrettierFileSink() {
      this =
        API::moduleImport("prettier")
            .getMember(["resolveConfig", "resolveConfigFile", "getFileInfo"])
            .getACall()
            .getArgument(0)
      or
      this =
        API::moduleImport("prettier")
            .getMember("resolveConfig")
            .getACall()
            .getParameter(1)
            .getMember("config")
            .getARhs()
    }
  }
}
