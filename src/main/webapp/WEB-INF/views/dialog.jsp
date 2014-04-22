<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>jQuery UI Dialog - Basic modal</title>
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <link rel="stylesheet" href="/resources/jquery/css/smoothness/jquery-ui-1.10.4.custom.min.css">
    <script src="/resources/jquery/js/jquery-1.10.2.js"></script>
    <script src="/resources/jquery/js/jquery-ui-1.10.4.custom.min.js"></script>
    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
    <script>
        $(function() {
            $( "#dialog-modal" ).dialog({
                closeOnEscape:false,
                autoOpen:false,
                height: 400,
                width:400,
                modal: true,
                open: function(ev, ui){
                    $(".ui-dialog-titlebar-close").hide();
                    $('#myIframe').attr('src',$("#website").val());
                }
            });
            $( "#clickme" )
                    .button()
                    .click(function() {
                        $( "#dialog-modal" ).dialog( "open" );
            });
        });
    </script>
</head>
<body>

<div id="dialog-modal" title="Basic modal dialog">
    <iframe height="100%" width="100%" id="myIframe" src=""></iframe>
</div>
<input type="text" value="www.google.com" id="website"/>         <br><br>
Click <button id="clickme">here</button> for modal window



</body>

<div id="divId" title="Dialog Title" />


$(parent.document).find('.ui-dialog');
window.parent.$('#dialogIDname').dialog('close');


</html>