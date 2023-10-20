from flask.views import View
import flask.views

class A(View):
    pass

class B(A):
    pass

class C(flask.views.MethodView):
    pass

ViewAlias = View

try:
    from flask.views import View as ViewAliasInTry
except:
    from flask.views import View as ViewAliasInExcept


if cond:
    from flask.views import View as clash
else:
    from django.views.generic import View as clash # $ SPURIOUS: View=Django.Views.View~Subclass

if cond:
    from flask.views import View as clash2 # $ MISSING
else:
    from django.views.generic import View as clash2 # $ MISSING
print(clash2)

if cond:
    from flask.views import View as clash3
else:
    from django.views.generic import View as clash3 # $ MISSING
    print(clash3)

import flask.views as containing_module_alias # $ MISSING
# now `find_subclass_test.containing_module_alias.View` is an alias of flask.views.View

# NOTE: this is not valid code, since View is not a module... but it could be in some cases, like for xml.etree.ElementTree, which is actually not a class but a module 😕
import flask.views.View as complete_module_alias

def wrapper():
    return View # $ MISSING
