<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="calendar.css"/>
</head>
<body>
	<div id="sbc-calendar-wrapper" class="sbc-calendar-wrapper">
        <h3>예약 현황</h3>
        <div id="sbc-calendar" class="sbc-calendar">
          <div class="sbc-calendar-month">
            <table class="sbc-calendar-table">
              <thead>
                <tr>
                  <th scope="col">S</th>
                  <th scope="col">M</th>
                  <th scope="col">T</th>
                  <th scope="col">W</th>
                  <th scope="col">T</th>
                  <th scope="col">F</th>
                  <th scope="col">S</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <td colspan="3" class="sbc-key">
                    <p><span class="sbc-status-Available sbc-status"></span> Available</p>
                    <p><span class="sbc-status-Booked sbc-status"></span> Booked</p>
                    
                  </td>
                  <td colspan="4" class="sbc-key">
                    <p><span class="sbc-status-Morning sbc-status"></span> Morning Availabile</p>
                    <p><span class="sbc-status-Afternoon sbc-status"></span> Afternoon Available</p>
                  </td>
                </tr>
              </tfoot>
              <tbody>
                <tr>
                  <td colspan="6" class="pad">&nbsp;</td>
                  
                  
                  <td class="sbc-day1 sbc-status-Morning ">
                    <span data-rel="tooltip" title="" data-original-title="Morning">1</span>
                  </td>
                  
                </tr>
                <tr>
                  
                  <td class="sbc-day2 sbc-status-Booked ">
                    <span data-rel="tooltip" title="" data-original-title="Booked">2</span>
                  </td>
                  
                  
                  <td class="sbc-day3 sbc-status-Afternoon ">
                    <span data-rel="tooltip" title="" data-original-title="Afternoon">3</span>
                  </td>
                  
                  
                  <td class="sbc-day4 sbc-status-Afternoon ">
                    <span data-rel="tooltip" title="" data-original-title="Afternoon">4</span>
                  </td>
                  
                  
                  <td class="sbc-day5 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">5</span>
                  </td>
                  
                  
                  <td class="sbc-day6 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">6</span>
                  </td>
                  
                  
                  <td class="sbc-day7 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">7</span>
                  </td>
                  
                  
                  <td class="sbc-day8 sbc-status-Booked ">
                    <span data-rel="tooltip" title="" data-original-title="Booked">8</span>
                  </td>
                  
                </tr>
                <tr>
                  
                  <td class="sbc-day9 sbc-status-Booked ">
                    <span data-rel="tooltip" title="" data-original-title="Booked">9</span>
                  </td>
                  
                  
                  <td class="sbc-day10 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">10</span>
                  </td>
                  
                  
                  <td class="sbc-day11 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">11</span>
                  </td>
                  
                  
                  <td class="sbc-day12 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">12</span>
                  </td>
                  
                  
                  <td class="sbc-day13 sbc-status-Available  sbc-today">
                    <span data-rel="tooltip" title="" data-original-title="Available">13</span>
                  </td>
                  
                  
                  <td class="sbc-day14 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">14</span>
                  </td>
                  
                  
                  <td class="sbc-day15 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">15</span>
                  </td>
                  
                </tr>
                <tr>
                  
                  <td class="sbc-day16 sbc-status-Booked ">
                    <span data-rel="tooltip" title="" data-original-title="Booked">16</span>
                  </td>
                  
                  
                  <td class="sbc-day17 sbc-status-Booked ">
                    <span data-rel="tooltip" title="" data-original-title="Booked">17</span>
                  </td>
                  
                  
                  <td class="sbc-day18 sbc-status-Afternoon ">
                    <span data-rel="tooltip" title="" data-original-title="Afternoon" onclick="openPop()">18</span>
                  </td>
                  
                  
                  <td class="sbc-day19 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">19</span>
                  </td>
                  
                  
                  <td class="sbc-day20 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">20</span>
                  </td>
                  
                  
                  <td class="sbc-day21 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">21</span>
                  </td>
                  
                  
                  <td class="sbc-day22 sbc-status-Booked ">
                    <span data-rel="tooltip" title="" data-original-title="Booked">22</span>
                  </td>
                  
                </tr>
                <tr>
                  
                  <td class="sbc-day23 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">23</span>
                  </td>
                  
                  
                  <td class="sbc-day24 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">24</span>
                  </td>
                  
                  
                  <td class="sbc-day25 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">25</span>
                  </td>
                  
                  
                  <td class="sbc-day26 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">26</span>
                  </td>
                  
                  
                  <td class="sbc-day27 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">27</span>
                  </td>
                  
                  
                  <td class="sbc-day28 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">28</span>
                  </td>
                  
                  
                  <td class="sbc-day29 sbc-status-Available ">
                    <span data-rel="tooltip" title="" data-original-title="Available">29</span>
                  </td>
                  
                </tr>
                <tr>
                  
                  <td class="sbc-day30 sbc-status-Morning ">
                    <span data-rel="tooltip" title="" data-original-title="Morning">30</span>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <script>
      	function openPop(){
      		var left = (screen.width-300)/2
      		var top = (screen.height-300) /2
      		window.open("bookingDetail.jsp", "pop1", `width=300, height=300, left=${left}, top=${top}`)
      	}
      </script>
</body>
</html>