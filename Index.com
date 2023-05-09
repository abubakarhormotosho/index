<!DOCTYPE html>
<html>
    <head>
        <style>
        form{
            background-color:#072E33;
            padding:50px;
            text-align:center;
            }
            label{
                front-family:Arial;
                front-size:30px
                color:White;
            }
            input{
                width:150px
            }
            </style>
            </head>
            <body>
            <h1>TIME CONVERTER</h1><hr>
            <form>

                    <label>Name:</lable><input type="text"
                id="Name"><br><br>
                    <label>Enter Days:</label><input type="number"
                id="Day"><br><br>

                    <label>Convert to:</label>

                    <select id="Option">
                      <option value="hour">Hour</option>
                      <option value="minutes">munite</option>
                    </select><br><br>


                    <button onclick="MyTime()">CONVERT</button>
                    <button type="rest">Reset</button>
                    </form>
                    <script>
                      function MyTime(){
                        var Name = document.getElemenrtyByld("Name").value;
                        var Days = parselnt(document.getElemenrtyByld)("Day").
                value);
                        var Option = document.getElemenrtyByld("Option").value;

                        var Convert;
                        if(Option=== "hour"){
                          Convert= Days*24+"hour"; 
                    }   else if(Option=== "minutes"){
                            Convert = Days *24*60 +"minutes";
                    }


                             alert(""Hi! + Name +"\" + Days + "days="+ Convert);
                             }
                             </script>
                            </body>
                           </html>
