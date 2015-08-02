<!DOCTYPE html>
<html>
    <head>
        <title>{{host}}</title>
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
                Welcome, visitor from {{ city }}!
                </h1>
                <p>
                <form action='allow' method='POST'><input type='password' name='password'></form>
                </p>
            </div>
        </div>
    </body>
</html>
