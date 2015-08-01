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
                Access granted
                </h1>
                <p>
                    <ul>
                        <li>Proxy address: {{host}}</li>
                        <li>Proxy port: 8888</li>
                    </ul>
                </p>
            </div>
        </div>
    </body>
</html>