<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="search.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12">
				<h4>검색</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="row">
							<form id="search_form" class="col-sm-12 search-form">
								<div class="row">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label for="category">운동종목</label> <select id="category"
													class="form-control">
													<option value="">종목</option>
													<option value="1">축구</option>
													<option value="2">농구</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="row">
											<div class="col-sm-12">
												<div class="form-group">
													<label for="keyword">지역/시설 이름</label><br> <input
														type="text" id="keyword" class="form-control"
														placeholder="검색어">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-12">
												<div class="form-group">
													<label for="mydata">시설 이용 날짜</label><br> <input
														type="date" name="mydata" value="2018-12-26" />
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 text-right">
										<button type="submit" class="btn btn-primary">검색</button>
									</div>
								</div>
							</form>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<tr>
									<td colspan="4">
										<ul class="pagination"></ul>
									</td>
								</tr>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>