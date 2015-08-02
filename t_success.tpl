<!DOCTYPE html>
<html>
    <head>
        <title>Access granted</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.5/paper/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
        .vertical-center {
        min-height: 100%;  /* Fallback for browsers do NOT support vh unit */
        min-height: 100vh; /* These two lines are counted as one :-)       */
        display: flex;
        align-items: center;
        }
        </style>
    </head>
    <body>
        <div class="vertical-center">
            <div class="container">
                <h1>
                HTTP Proxy Server<small>Access granted</small>
                </h1>
                <form>
                    <div class="form-group">
                        <label for="httpProxyAddress">Server Address</label>
                        <input type="text" class="form-control" id="httpProxyAddress" value="{{host}}" onClick="this.select();" readonly>
                    </div>
                    <div class="form-group">
                        <label for="httpProxyPort">Server Port</label>
                        <input type="text" class="form-control" id="httpProxyPort" value="8888" onClick="this.select();" readonly>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>