// Code generated by depstubber. DO NOT EDIT.
// This is a simple stub for github.com/labstack/echo/v4, strictly for use in testing.

// See the LICENSE file for information about the licensing of the original library.
// Source: github.com/labstack/echo/v4 (exports: Context; functions: New)

// Package echo is a stub of github.com/labstack/echo/v4, generated by depstubber.
package echo

import (
	bufio "bufio"
	context "context"
	io "io"
	log "log"
	multipart "mime/multipart"
	net "net"
	http "net/http"
	url "net/url"
)

type Binder interface {
	Bind(_ interface{}, _ Context) error
}

type Context interface {
	Attachment(_ string, _ string) error
	Bind(_ interface{}) error
	Blob(_ int, _ string, _ []byte) error
	Cookie(_ string) (*http.Cookie, error)
	Cookies() []*http.Cookie
	Echo() *Echo
	Error(_ error)
	File(_ string) error
	FormFile(_ string) (*multipart.FileHeader, error)
	FormParams() (url.Values, error)
	FormValue(_ string) string
	Get(_ string) interface{}
	HTML(_ int, _ string) error
	HTMLBlob(_ int, _ []byte) error
	Handler() HandlerFunc
	Inline(_ string, _ string) error
	IsTLS() bool
	IsWebSocket() bool
	JSON(_ int, _ interface{}) error
	JSONBlob(_ int, _ []byte) error
	JSONP(_ int, _ string, _ interface{}) error
	JSONPBlob(_ int, _ string, _ []byte) error
	JSONPretty(_ int, _ interface{}, _ string) error
	Logger() Logger
	MultipartForm() (*multipart.Form, error)
	NoContent(_ int) error
	Param(_ string) string
	ParamNames() []string
	ParamValues() []string
	Path() string
	QueryParam(_ string) string
	QueryParams() url.Values
	QueryString() string
	RealIP() string
	Redirect(_ int, _ string) error
	Render(_ int, _ string, _ interface{}) error
	Request() *http.Request
	Reset(_ *http.Request, _ http.ResponseWriter)
	Response() *Response
	Scheme() string
	Set(_ string, _ interface{})
	SetCookie(_ *http.Cookie)
	SetHandler(_ HandlerFunc)
	SetLogger(_ Logger)
	SetParamNames(_ ...string)
	SetParamValues(_ ...string)
	SetPath(_ string)
	SetRequest(_ *http.Request)
	SetResponse(_ *Response)
	Stream(_ int, _ string, _ io.Reader) error
	String(_ int, _ string) error
	Validate(_ interface{}) error
	XML(_ int, _ interface{}) error
	XMLBlob(_ int, _ []byte) error
	XMLPretty(_ int, _ interface{}, _ string) error
}

type Echo struct {
	StdLogger        *log.Logger
	Server           *http.Server
	TLSServer        *http.Server
	Listener         net.Listener
	TLSListener      net.Listener
	AutoTLSManager   interface{}
	DisableHTTP2     bool
	Debug            bool
	HideBanner       bool
	HidePort         bool
	HTTPErrorHandler HTTPErrorHandler
	Binder           Binder
	Validator        Validator
	Renderer         Renderer
	Logger           Logger
	IPExtractor      IPExtractor
}

func (_ *Echo) AcquireContext() Context {
	return nil
}

func (_ *Echo) Add(_ string, _ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) Any(_ string, _ HandlerFunc, _ ...MiddlewareFunc) []*Route {
	return nil
}

func (_ *Echo) CONNECT(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) Close() error {
	return nil
}

func (_ *Echo) DELETE(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) DefaultHTTPErrorHandler(_ error, _ Context) {}

func (_ *Echo) File(_ string, _ string, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) GET(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) Group(_ string, _ ...MiddlewareFunc) *Group {
	return nil
}

func (_ *Echo) HEAD(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) Host(_ string, _ ...MiddlewareFunc) *Group {
	return nil
}

func (_ *Echo) Match(_ []string, _ string, _ HandlerFunc, _ ...MiddlewareFunc) []*Route {
	return nil
}

func (_ *Echo) NewContext(_ *http.Request, _ http.ResponseWriter) Context {
	return nil
}

func (_ *Echo) OPTIONS(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) PATCH(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) POST(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) PUT(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) Pre(_ ...MiddlewareFunc) {}

func (_ *Echo) ReleaseContext(_ Context) {}

func (_ *Echo) Reverse(_ string, _ ...interface{}) string {
	return ""
}

func (_ *Echo) Router() *Router {
	return nil
}

func (_ *Echo) Routers() map[string]*Router {
	return nil
}

func (_ *Echo) Routes() []*Route {
	return nil
}

func (_ *Echo) ServeHTTP(_ http.ResponseWriter, _ *http.Request) {}

func (_ *Echo) Shutdown(_ context.Context) error {
	return nil
}

func (_ *Echo) Start(_ string) error {
	return nil
}

func (_ *Echo) StartAutoTLS(_ string) error {
	return nil
}

func (_ *Echo) StartH2CServer(_ string, _ interface{}) error {
	return nil
}

func (_ *Echo) StartServer(_ *http.Server) error {
	return nil
}

func (_ *Echo) StartTLS(_ string, _ interface{}, _ interface{}) error {
	return nil
}

func (_ *Echo) Static(_ string, _ string) *Route {
	return nil
}

func (_ *Echo) TRACE(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Echo) URI(_ HandlerFunc, _ ...interface{}) string {
	return ""
}

func (_ *Echo) URL(_ HandlerFunc, _ ...interface{}) string {
	return ""
}

func (_ *Echo) Use(_ ...MiddlewareFunc) {}

type Group struct{}

func (_ *Group) Add(_ string, _ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Group) Any(_ string, _ HandlerFunc, _ ...MiddlewareFunc) []*Route {
	return nil
}

func (_ *Group) CONNECT(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Group) DELETE(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Group) File(_ string, _ string) {}

func (_ *Group) GET(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Group) Group(_ string, _ ...MiddlewareFunc) *Group {
	return nil
}

func (_ *Group) HEAD(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Group) Match(_ []string, _ string, _ HandlerFunc, _ ...MiddlewareFunc) []*Route {
	return nil
}

func (_ *Group) OPTIONS(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Group) PATCH(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Group) POST(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Group) PUT(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Group) Static(_ string, _ string) {}

func (_ *Group) TRACE(_ string, _ HandlerFunc, _ ...MiddlewareFunc) *Route {
	return nil
}

func (_ *Group) Use(_ ...MiddlewareFunc) {}

type HTTPErrorHandler func(error, Context)

type HandlerFunc func(Context) error

type IPExtractor func(*http.Request) string

type Logger interface {
	Debug(_ ...interface{})
	Debugf(_ string, _ ...interface{})
	Debugj(_ interface{})
	Error(_ ...interface{})
	Errorf(_ string, _ ...interface{})
	Errorj(_ interface{})
	Fatal(_ ...interface{})
	Fatalf(_ string, _ ...interface{})
	Fatalj(_ interface{})
	Info(_ ...interface{})
	Infof(_ string, _ ...interface{})
	Infoj(_ interface{})
	Level() interface{}
	Output() io.Writer
	Panic(_ ...interface{})
	Panicf(_ string, _ ...interface{})
	Panicj(_ interface{})
	Prefix() string
	Print(_ ...interface{})
	Printf(_ string, _ ...interface{})
	Printj(_ interface{})
	SetHeader(_ string)
	SetLevel(_ interface{})
	SetOutput(_ io.Writer)
	SetPrefix(_ string)
	Warn(_ ...interface{})
	Warnf(_ string, _ ...interface{})
	Warnj(_ interface{})
}

type MiddlewareFunc func(HandlerFunc) HandlerFunc

func New() *Echo {
	return nil
}

type Renderer interface {
	Render(_ io.Writer, _ string, _ interface{}, _ Context) error
}

type Response struct {
	Writer    http.ResponseWriter
	Status    int
	Size      int64
	Committed bool
}

func (_ *Response) After(_ func()) {}

func (_ *Response) Before(_ func()) {}

func (_ *Response) Flush() {}

func (_ *Response) Header() http.Header {
	return nil
}

func (_ *Response) Hijack() (net.Conn, *bufio.ReadWriter, error) {
	return nil, nil, nil
}

func (_ *Response) Write(_ []byte) (int, error) {
	return 0, nil
}

func (_ *Response) WriteHeader(_ int) {}

type Route struct {
	Method string
	Path   string
	Name   string
}

type Router struct{}

func (_ *Router) Add(_ string, _ string, _ HandlerFunc) {}

func (_ *Router) Find(_ string, _ string, _ Context) {}

type Validator interface {
	Validate(_ interface{}) error
}
