<html>
    <head>
        <title>Cryptography</title>
        <link rel="stylesheet" href="homecss.css">
    </head>
    <body>
        <a href="index.html"><h3>Cryptography</h3></a>
        <h2>Ceaser Cipher</h2>
        <table>
            <tr>
            <td>Alphabet</td>
            <%for(int i=65;i<=90;i++){%><td><%=(char)i%></td><%}%>
            </tr>
            <tr>
            <td>Value</td>
            <% for(int i=0;i<=25;i++){%><td><%=i%></td><%}%>
            </tr>
        </table>
        <form id="enc">
        <input type="hidden" id="h">
        <label>Plain Text</label><input type="text" id="pt"><br>
        <label>Key</label><input type="number" min="1" max="26"><br>
        <button onclick=encrypt()>Encrypt</button>
        </form>
        <form id="dec">
        <label>Cipher Text</label><input type="text" id="ct"><br>
        <label>Key</label><input type="number" align="left" min="1" max="26"><br>
        <button onclick=decrypt()>Decrypt</button>
        <br>
        </form>
        <form id="ef">
            <label id="e">Encrypt</label><br>
            <label id="e">C = ( P + K ) mod 26</label><br>
            <label id="e">C = ( <input id="ed" type="number"> + <input id="ed" type="number"> ) % 26</label>
            <div id="et"></div>
        </form>
        <form id="df">
            <label id="e">Decrypt</label><br>
            <label id="e">P = ( C - K ) mod 26</label><br>
            <label id="e">P = ( <input id="ed" type="number"> + <input id="ed" type="number"> ) % 26</label>
            <div id="dt"></div>
        </form>
        <script>
            function encrypt(){
                document.getElementById("ef").style.display="block";
                var s=document.getElementById("pt").value;
                var i=0;
                document.write("<table><tr>")
                for(i=0;i<s.length;i++){
                    document.write("<td>"+s[i]+"</td>");
                }
                document.write("</tr><tr>");
                for(i=0;i<s.length;i++){
                    document.write("<td>"+String.fromCharCode(s[i].charCodeAt(0)+3)+"</td>");
                }
                sleep(2000);
            }
        </script>
    </body>
</html>