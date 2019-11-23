<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachSPWebUserControl.ascx.cs" Inherits="TravelBrokersWeb.GUI.DanhSachSPWebUserControl" %>
 <asp:Repeater runat="server" ID="rpDSSP">
                    <HeaderTemplate>
                          <div class="row">
                    </HeaderTemplate>
                    <ItemTemplate>
                      <div class="col-lg-3 mt-2 mb-2">
                  <div class="card">
                    <div>
                      <div id="count" class="badge badge-pill badge-info coundown-date"></div>
                      <script>
                      var countDownDate = new Date("<%#:Eval("departureDate","{0:d}")%>").getTime();
                      var x = setInterval(function() {
                        var now = new Date().getTime();
                        var distance = countDownDate - now;
                        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                        document.getElementById("count").innerHTML = days + " days " + hours + "h "
                        + minutes + "m " + seconds + "s ";
                        if (distance < 0) {
                          clearInterval(x);
                          document.getElementById("demo").innerHTML = "Hết hạn";
                        }
                      }, 1000);
                      </script>
                        <img class="card-img-top" src="../images/<%#:Eval("image") %>" alt="Card image">
                        <div class="date-departure2 badge badge-warning"><i class="far fa-calendar-alt text-secondary "></i> <%#:Eval("departureDate","{0:d}") %> - <%#:Eval("numDays") %> days</div>
                        <div class="slot2 badge badge-warning"><i class="fas fa-bus text-secondary "></i> <%#:Eval("slot") %> slot</div>
                    </div>
                    <div class="card-body">
                      <p class="card-text bg-light" style="transform: rotate(0);">
                        <asp:LinkButton runat="server" CommandArgument='<%#:Eval("id") %>' class="stretched-link"><h4 class="card-title font-weight-bold"><%#:Eval("name") %></h4></asp:LinkButton>
                      </p>
                    
                      <hr>
                      <p><a href="#" class="stretched-link" style="position: relative;"></a></p>
                      <div class="row mt-3">
                        <div class="col-4 text-light font-italic badge badge-secondary mr-auto ml-3 tour-price"><s><%#:string.Format("{0:n0}",Eval("origanalPrice"))%>đ</s></div>
                        <div class="col-4 text-light font-weight-bold badge badge-danger ml-auto mr-3 tour-price"><%#:string.Format("{0:n0}",Eval("promotionPrice"))%>đ</div>
                      </div>
                    </div>
                  </div>
                </div>
                    </ItemTemplate>
                    <FooterTemplate>
                         </div>
                    </FooterTemplate>
  </asp:Repeater>