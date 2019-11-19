<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="HomeWebForm.aspx.cs" Inherits="TravelBrokersWeb.GUI.HomeWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container-fluid">
        <div class="row mt-3 border-bottom">
            <div id="carouselExampleControls2" class="carousel slide slide-banner col-lg-10 m-auto" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <!--First slide-->
                    <div class="carousel-item active">
                      <div class="row">
                          <div class="col-md-2">
                              <div class="card mb-2">
                                <img class="card-img-top" src="../images/proposal-flight.png"
                                  alt="Card image cap">
                                <div class="card-body">
                                  <h4 class="card-title">Card title</h4>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-2">
                                <div class="card mb-2">
                                  <img class="card-img-top" src="../images/proposal-flight.png"
                                    alt="Card image cap">
                                  <div class="card-body">
                                    <h4 class="card-title">Card title</h4>
                                  </div>
                                </div>
                              </div>
                              <div class="col-md-2">
                                  <div class="card mb-2">
                                    <img class="card-img-top" src="../images/proposal-flight.png"
                                      alt="Card image cap">
                                    <div class="card-body">
                                      <h4 class="card-title">Card title</h4>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="card mb-2">
                                      <img class="card-img-top" src="../images/proposal-flight.png"
                                        alt="Card image cap">
                                      <div class="card-body">
                                        <h4 class="card-title">Card title</h4>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-2">
                                      <div class="card mb-2">
                                        <img class="card-img-top" src="../images/proposal-flight.png"
                                          alt="Card image cap">
                                        <div class="card-body">
                                          <h4 class="card-title">Card title</h4>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="card mb-2">
                                          <img class="card-img-top" src="../images/proposal-flight.png"
                                            alt="Card image cap">
                                          <div class="card-body">
                                            <h4 class="card-title">Card title</h4>
                                          </div>
                                        </div>
                                      </div>
                      </div>
            
                    </div>
                    <!--/.First slide-->
            
                    <!--Second slide-->
                    <div class="carousel-item">
            
                      <div class="row">
                        <div class="col-md-3">
                          <div class="card mb-2">
                            <img class="card-img-top" src="../images/proposal-flight.png"
                              alt="Card image cap">
                            <div class="card-body">
                              <h4 class="card-title">Card title</h4>
                            </div>
                          </div>
                        </div>
            
                        <div class="col-md-3 clearfix d-none d-md-block">
                          <div class="card mb-2">
                            <img class="card-img-top" src="../images/proposal-flight.png"
                              alt="Card image cap">
                            <div class="card-body">
                              <h4 class="card-title">Card title</h4>
                            </div>
                          </div>
                        </div>
            
                        <div class="col-md-3 clearfix d-none d-md-block">
                          <div class="card mb-2">
                            <img class="card-img-top" src="../images/proposal-flight.png"
                              alt="Card image cap">
                            <div class="card-body">
                              <h4 class="card-title">Card title</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-3 clearfix d-none d-md-block">
                            <div class="card mb-2">
                              <img class="card-img-top" src="../images/proposal-flight.png"
                                alt="Card image cap">
                              <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                              </div>
                            </div>
                          </div>
                      </div>
            
                    </div>
                    <!--/.Second slide-->
                  </div>
                <a class="carousel-control-prev btn-outline-secondary" href="#carouselExampleControls2" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="false"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next btn-outline-secondary" href="#carouselExampleControls2" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="false"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
        </div>
        <div class="row">
          <div class="col-lg-10 content m-auto">
            <div class="container-fluid">
              <div class="h3 mt-3 text-dark  text-center">TOUR HOT NHẤT</div>
              <div class="mt-1 pb-1 text-dark border-bottom text-center">Tour được đặt nhiều nhất</div>
              <div class="row">
                <div class="col-lg-3 mt-2 mb-2">
                  <div class="card">
                    <div>
                      <div id="count" class="badge badge-pill badge-info coundown-date"></div>
                      <script>
                      var countDownDate = new Date("Jan 5, 2021 15:37:25").getTime();
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
                          document.getElementById("demo").innerHTML = "EXPIRED";
                        }
                      }, 1000);
                      </script>
                        <img class="card-img-top" src="../images/flight.jpg" alt="Card image">
                        <div class="date-departure2 badge badge-warning"><i class="far fa-calendar-alt text-secondary "></i> 9/11/2019 - 3 days</div>
                        <div class="slot2 badge badge-warning"><i class="fas fa-bus text-secondary "></i> 12 slot</div>
                    </div>
                    <div class="card-body">
                      <p class="card-text bg-light" style="transform: rotate(0);">
                        <a href="ctsp.html" class="stretched-link"><h4 class="card-title font-weight-bold">Lorem ipsum dolor sit amet</h4></a>
                      </p>
                    
                      <hr>
                      <p><a href="#" class="stretched-link" style="position: relative;"></a></p>
                      <div class="row mt-3">
                        <div class="col-4 text-light font-italic badge badge-secondary mr-auto ml-3 tour-price"><s>8,622,000đ</s></div>
                        <div class="col-4 text-light font-weight-bold badge badge-danger ml-auto mr-3 tour-price">7,423,000đ</div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 mt-2 mb-2">
                  <div class="card">
                    <div>
                        <img class="card-img-top" src="../images/flight.jpg" alt="Card image">
                        <div class="date-departure"><i class="far fa-calendar-alt text-secondary"></i> 9/11/2019 - 3 days</div>
                        <div class="slot"><i class="fas fa-bus text-secondary"></i> 12 slot</div>
                    </div>
                    <div class="card-body">
                      <p class="card-text bg-light" style="transform: rotate(0);">
                        <a href="ctsp.html" class="stretched-link"><h4 class="card-title font-weight-bold">Lorem ipsum dolor sit amet</h4></a>
                      </p>
                      <hr>
                      <p><a href="#" class="stretched-link" style="position: relative;"></a></p>
                      <div class="row mt-3">
                        <div class="col-lg-6 text-dark font-italic"><s>8,622,000đ</s></div>
                        <div class="col-lg-6 text-danger font-weight-bold">7,423,000đ</div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 mt-2 mb-2">
                  <div class="card">
                    <div>
                        <img class="card-img-top" src="../images/flight.jpg" alt="Card image">
                        <div class="date-departure"><i class="far fa-calendar-alt text-secondary"></i> 9/11/2019 - 3 days</div>
                        <div class="slot"><i class="fas fa-bus text-secondary"></i> 12 slot</div>
                    </div>
                    <div class="card-body">
                      <p class="card-text bg-light" style="transform: rotate(0);">
                        <a href="ctsp.html" class="stretched-link"><h4 class="card-title font-weight-bold">Lorem ipsum dolor sit amet</h4></a>
                      </p>
                      <hr>
                      <p><a href="#" class="stretched-link" style="position: relative;"></a></p>
                      <div class="row mt-3">
                        <div class="col-lg-6 text-dark font-italic"><s>8,622,000đ</s></div>
                        <div class="col-lg-6 text-danger font-weight-bold">7,423,000đ</div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 mt-2 mb-2">
                  <div class="card">
                    <div>
                        <img class="card-img-top" src="../images/flight.jpg" alt="Card image">
                        <div class="date-departure"><i class="far fa-calendar-alt text-secondary"></i> 9/11/2019 - 3 days</div>
                        <div class="slot"><i class="fas fa-bus text-secondary"></i> 12 slot</div>
                    </div>
                    <div class="card-body">
                      <p class="card-text bg-light" style="transform: rotate(0);">
                        <a href="ctsp.html" class="stretched-link"><h4 class="card-title font-weight-bold">Lorem ipsum dolor sit amet</h4></a>
                      </p>
                      <hr>
                      <p><a href="#" class="stretched-link" style="position: relative;"></a></p>
                      <div class="row mt-3">
                        <div class="col-lg-6 text-dark font-italic"><s>8,622,000đ</s></div>
                        <div class="col-lg-6 text-danger font-weight-bold">7,423,000đ</div>
                      </div>
                    </div>
                  </div>
                </div>
                </div>
            </div>
          </div>
          </div>
          <div class="row">
            <div class="col-lg-10 content m-auto">
              <div class="container-fluid">
                <div class="h3 mt-3 text-dark  text-center">TOUR MỚI NHẤT</div>
                <div class="mt-1 pb-1 text-dark border-bottom text-center">Tour mới nhất</div>
                <div class="row">
                  <div class="col-lg-3 mt-2 mb-2">
                    <div class="card">
                      <div>
                          <img class="card-img-top" src="../images/flight.jpg" alt="Card image">
                          <div class="date-departure"><i class="far fa-calendar-alt text-secondary"></i> 9/11/2019 - 3 days</div>
                          <div class="slot"><i class="fas fa-bus text-secondary"></i> 12 slot</div>
                      </div>
                      <div class="card-body">
                        <p class="card-text bg-light" style="transform: rotate(0);">
                          <a href="ctsp.html" class="stretched-link"><h4 class="card-title font-weight-bold">Lorem ipsum dolor sit amet</h4></a>
                        </p>
                        <hr>
                        <p><a href="#" class="stretched-link" style="position: relative;"></a></p>
                        <div class="row mt-3">
                          <div class="col-lg-6 text-dark font-italic"><s>8,622,000đ</s></div>
                          <div class="col-lg-6 text-danger font-weight-bold">7,423,000đ</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 mt-2 mb-2">
                    <div class="card">
                      <div>
                          <img class="card-img-top" src="../images/flight.jpg" alt="Card image">
                          <div class="date-departure"><i class="far fa-calendar-alt text-secondary"></i> 9/11/2019 - 3 days</div>
                          <div class="slot"><i class="fas fa-bus text-secondary"></i> 12 slot</div>
                      </div>
                      <div class="card-body">
                        <p class="card-text bg-light" style="transform: rotate(0);">
                          <a href="ctsp.html" class="stretched-link"><h4 class="card-title font-weight-bold">Lorem ipsum dolor sit amet</h4></a>
                        </p>
                        <hr>
                        <p><a href="#" class="stretched-link" style="position: relative;"></a></p>
                        <div class="row mt-3">
                          <div class="col-lg-6 text-dark font-italic"><s>8,622,000đ</s></div>
                          <div class="col-lg-6 text-danger font-weight-bold">7,423,000đ</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 mt-2 mb-2">
                    <div class="card">
                      <div>
                          <img class="card-img-top" src="../images/flight.jpg" alt="Card image">
                          <div class="date-departure"><i class="far fa-calendar-alt text-secondary"></i> 9/11/2019 - 3 days</div>
                          <div class="slot"><i class="fas fa-bus text-secondary"></i> 12 slot</div>
                      </div>
                      <div class="card-body">
                        <p class="card-text bg-light" style="transform: rotate(0);">
                          <a href="ctsp.html" class="stretched-link"><h4 class="card-title font-weight-bold">Lorem ipsum dolor sit amet</h4></a>
                        </p>
                        <hr>
                        <p><a href="#" class="stretched-link" style="position: relative;"></a></p>
                        <div class="row mt-3">
                          <div class="col-lg-6 text-dark font-italic"><s>8,622,000đ</s></div>
                          <div class="col-lg-6 text-danger font-weight-bold">7,423,000đ</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 mt-2 mb-2">
                    <div class="card">
                      <div>
                          <img class="card-img-top" src="../images/flight.jpg" alt="Card image">
                          <div class="date-departure"><i class="far fa-calendar-alt text-secondary"></i> 9/11/2019 - 3 days</div>
                          <div class="slot"><i class="fas fa-bus text-secondary"></i> 12 slot</div>
                      </div>
                      <div class="card-body">
                        <p class="card-text bg-light" style="transform: rotate(0);">
                          <a href="ctsp.html" class="stretched-link"><h4 class="card-title font-weight-bold">Lorem ipsum dolor sit amet</h4></a>
                        </p>
                        <hr>
                        <p><a href="#" class="stretched-link" style="position: relative;"></a></p>
                        <div class="row mt-3">
                          <div class="col-lg-6 text-dark font-italic"><s>8,622,000đ</s></div>
                          <div class="col-lg-6 text-danger font-weight-bold">7,423,000đ</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  </div>
              </div>
        </div>
      </div>
    </section>
</asp:Content>
