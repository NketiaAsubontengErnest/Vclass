<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnswerQuiz.aspx.cs" Inherits="Vclass.StudentsPages.AnswerQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body onload="startCountdown(1800);">
    <form id="form1" runat="server">
    <script>
       function startCountdown(timeLeft) {
           var interval = setInterval(countdown, 1000);
           update();

           function countdown() {
               if (--timeLeft > 0) {
                   update();
               } else {
                   clearInterval(interval);
                   update();
                   completed();
               }
           }

           function update() {
               hours = Math.floor(timeLeft / 3600);
               minutes = Math.floor((timeLeft % 3600) / 60);
               seconds = timeLeft % 60;

               document.getElementById('Label3').innerHTML = '' + hours + ':' + minutes + ':' + seconds;
           }
           function completed() {
               document.write("Time up!!");
           }
       }

    </script>
   
    <center>
        <h1>Quiz</h1>
    </center>
    
        <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 246px; top: 131px; position: absolute; height: 744px; width: 791px">
        
            
               <div>
                   <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                        <table>
                            <tr>
                                <td>
                                    <%# Eval("ID")%>. <%# Eval("Question") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h4>Select one: </h4>
                                </td>
                            </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadOption1" runat="server" Text='<%#Eval("Option1")%>' GroupName="rdExam"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadOption2" runat="server" Text='<%#Eval("Option2")%>' GroupName="rdExam"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadOption3" runat="server" Text='<%#Eval("Option3")%>' GroupName="rdExam"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadOption4" runat="server" Text='<%#Eval("Option4")%>' GroupName="rdExam"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblCorrect" runat="server" Text='<%#Eval("Answer")%>' Visible ="false"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblSelectedAns" runat="server" CssClass="labels" Text='<%#Eval("Answer")%>' Visible ="false"></asp:Label>
                                    </td>
                                </tr>
                                </table>
                            </ItemTemplate>
                   </asp:Repeater>
               
               </div>
               
                       
                 <asp:Button ID="btnSubmit" CssClass="Button" runat="server" style="z-index: 1; left: 857px; top: 905px; position: absolute; right: 203px;" Text="Submit" OnClick="btnSubmit_Click" />
                            
       
                    
                
        </asp:Panel>
     <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 1148px; top: 134px; position: absolute; height: 37px; width: 76px"></asp:Label>
   
    
    <asp:Label ID="lblTimer" runat="server" style="z-index: 1; left: 162px; top: 127px; color:white; position: absolute; height: 41px; width: 70px" Text="Label"></asp:Label>
   
    
    <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 22px; top: 127px; position: absolute; height: 25px; width: 54px;" Text="Label"></asp:Label>
   
    </form>
</body>
</html>
