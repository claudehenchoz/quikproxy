from bottle import route, run, request, template, abort
from subprocess import call
import unirest

masterkey = "changeme"


@route('/')
def hello():
    ip = request.environ.get('REMOTE_ADDR')
    host = request.get_header('host').split(':', 1)[0]

    url = "http://ipinfo.io/" + ip
    data = unirest.get(url, headers={"Accept": "application/json"})

    return template("t_hello", ip=ip, host=host, data=data)


@route('/allow', method='POST')
def do_login():
    ip = request.environ.get('REMOTE_ADDR')
    password = request.forms.get('password')

    if password == masterkey:
        host = request.get_header('host').split(':', 1)[0]
        with open('/etc/tinyproxy.conf', 'a') as file:
            file.write('Allow %s\n' % ip)
        call(["service", "tinyproxy", "restart"])
        call(["iptables", "-A", "INPUT",
                          "-s", ip,
                          "-p", "tcp",
                          "--dport", "8888",
                          "-j", "ACCEPT"])
        return template("t_success", host=host)

    else:
        abort(401, "Access denied.")

run(host='0.0.0.0', port=80, debug=False)
