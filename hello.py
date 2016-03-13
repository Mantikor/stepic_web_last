from cgi import parse_qs
import string

def app(environ, start_response):
	body = ''
        if environ['REQUEST_METHOD'] == 'GET':
                a = string.replace(environ['QUERY_STRING'], '&', '\n')
                print(a)
		body = a
                print(body)
                status = '200 OK'
                headers = [('Content-Type', 'text/plain')]
                start_response(status, headers )
                return [ body ]
