<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Papers.aspx.cs" Inherits="Form.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/materialize.min.css" media="screen,projection"/>
    <link rel="stylesheet" type="text/css" href="css/materialize.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Test</title>
</head>
<body>
    <header>
        <div class="logo">
            <img src="img/logo.png" class="logo-img"/>
            <label>Triangle</label>
        </div>   
        <div class="hr"></div>
    </header>
    <div class="canvas-background">
        <canvas id="canvas"></canvas>
    </div>
        <form id="form1" runat="server">
            <div class="row">
                <div class="header-help"></div>
                <div class="col s12 m2 l4 xl6 triangle-img">
                    <img class="triangle" src="img/group_triangle.png"/>ы
                </div>
                <div class="control-sm col s12 m10 l8 xl6">
                           
                    <div class="col s11">
                        <h2 class="white-text">Печатные издания</h2>
                    </div>
                    <div class="input-field col s11">
                        
                        <select id="edition" style="color: white;" onchange="check(); montselse ();">
                            <option value="none" disabled selected>Выберите издание</option>
                            <option value="1" data-id="1" data-month="1,3,4,5,6,11">Издательство Калан</option>
                            <option value="2" data-id="2" data-month="">Уральский рабочий</option>
                            <option value="3" data-id="3" data-month="6,7,12">Вечерняя газета</option>
                            <option value="4" data-id="4" data-month="1,4,5">Утренняя газета</option>
                        </select>
                        <label>Выбор печатного издания</label>
                    </div>
                    <div class="input-field col s11">
                        <select id="year" style="color: white;" onchange="check();">
                            <option value="none" disabled selected>Выберите год</option>
                            <option value="1">2016</option>
                            <option value="2">2017</option>
                            <option value="3">2018</option>
                        </select>
                        <label>Выбор календарного года</label>
                    </div>
                    <div class="input-field col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="january" class="filled-in mon"/>
                                <span>Январь</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="february" class="filled-in mon"/>
                                <span>Февраль</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="march" class="filled-in mon"/>
                                <span>Март</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="april" class="filled-in mon"/>
                                <span>Апрель</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="may" class="filled-in mon"/>
                                <span>Май</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="june" class="filled-in mon"/>
                                <span>Июнь</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="july" class="filled-in mon" />
                                <span>Июль</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="august" class="filled-in mon"/>
                                <span>Август</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="september" class="filled-in mon" />
                                <span>Сентябрь</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="october" class="filled-in mon" />
                                <span>Октябрь</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="november" class="filled-in mon" />
                                <span>Ноябрь</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col col s6 m4 l2">
                        <p>
                            <label>
                                <input type="checkbox" onclick="check();" id="december" class="filled-in mon" />
                                <span>Декабрь</span>
                            </label>
                        </p>
                    </div>   
                    <div class="input-field col s12 l4 offset-l8">
                        <div class="switch">
                            <label>
                              <div class="switch-label">Выбрать полугодие</div>
                              <input id="mon6" type="checkbox" />
                              <span class="lever"></span>
                              Вкл
                            </label>
                        </div> 
                    </div>
                    <div class="input-field col s12 l4 offset-l8">
                        <div class="switch">
                            <label>
                            <div class="switch-label">Выбрать все</div>
                              
                              <input id="alls" type="checkbox" />
                              <span class="lever"></span>
                              Вкл
                            </label>
                        </div>             
                    </div>
                    <div class="col s12 m10 offset-m1 l8 offset-l2 xl6 offset-xl3" style="margin-top: 60px;">
                        <button id="button" class="btn waves-effect waves-light" type="submit" name="action" disabled>Подписаться
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                    <div class="row"></div>
                
                </div>
            </div>         
        </form>   
</body>
    <script src="scripts/jquery.js"></script>
    <script src="scripts/materialize.min.js"></script>
    <script src="scripts/materialize.js"></script>
    <script src="scripts/test.js"></script>
    <script src="scripts/canvas.js"></script>
</html>
