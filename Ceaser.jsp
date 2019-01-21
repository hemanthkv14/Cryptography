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
        <label>Plain Text</label><input type="text" id="pt"><br>
        <label>Key</label><input type="number" min="1" max="26"><br>
        <button onclick=encrypt()>Encrypt</button><br>
        </form>
        <form id="dec">
        <label>Cipher Text</label><input type="text" id="ct"><br>
        <label>Key</label><input type="number" min="1" max="26"><br>
        <button onclick="decrypt()">Decrypt</button>
        </form>
        <form id="ef">
            <label id="e">Encrypt</label><br>
            <label id="e">C = ( P + K ) mod 26</label><br>
            <label id="e">C = ( <input id="ed" type="number"> + <input id="ed" type="number"> ) % 26 </label><br>
            <label id="e">Value = <input id="ed" type="number"></label><br>
            <label id="e">Ciphertext = <input type="text"></label>
        </form>
        <form id="df">
            <label id="e">Decrypt</label><br>
            <label id="e">P = ( C - K ) mod 26</label><br>
            <label id="e">P = ( <input id="ed" type="number"> + <input id="ed" type="number"> ) % 26</label><br>
            <label id="e">Value = <input id="ed" type="number"></label><br>
            <label id="e">Plaintext = <input type="text"></label>
        </form>
        <script>        
            function encrypt(){
                document.getElementById("ef").style.display="block";
            }
            function decrypt(){
                document.getElementById("df").style.display="block";
            }
        </script>
    </body>
</html>