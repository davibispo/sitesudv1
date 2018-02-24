<?php

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//role
Route::resource('/adm/roles', 'RoleController');
//permission
Route::resource('/adm/permissions', 'PermissionController');
//user
Route::resource('/adm/users', 'UserController');
//calendar
Route::resource('/maceio-stakes/tabuleiro-stake/calendars', 'CalendarController');
Route::get('/maceio-stakes/tabuleiro-stake/calendars/show-calendar', 'CalendarController@showCalendar')->name('calendars.show-calendar');
//interview
Route::resource('/maceio-stakes/tabuleiro-stake/interviews', 'InterviewController');
//caravan
Route::resource('/maceio-stakes/tabuleiro-stake/caravans', 'CaravanController');
//caravanUser
Route::resource('/maceio-stakes/tabuleiro-stake/caravan-users', 'CaravanUserController');
Route::get('/maceio-stakes/tabuleiro-stake/caravan-users/{caravanId}/create-caravan-user', 'CaravanUserController@createCaravanUser')->name('caravan-users.create-caravan-user');
Route::get('/maceio-stakes/tabuleiro-stake/caravan-users/{caravanId}/create-caravan-user-kid', 'CaravanUserController@createCaravanUserKid')->name('caravan-users.create-caravan-user-kid');
Route::get('/maceio-stakes/tabuleiro-stake/caravan-users/{caravanId}/show-print', 'CaravanUserController@showPrint')->name('caravan-users.show-print');
Route::get('/adm/users/create', 'UserController@create')->name('users.create');
Route::post('/adm/users/create', 'UserController@store');

//rote para a Estaca Tabuleiro
Route::get('/maceio-stakes/tabuleiro-stake/index', 'StakeController@indexTabuleiro')->name('maceio-stakes.tabuleiro-stake.index');

//Perfis e usuarios
Route::resource('/adm/role-users', 'RoleUserController');

//Cadastro de equipamentos
Route::resource('/maceio-stakes/tabuleiro-stake/equipments', 'EquipmentController');

//Aluguel de equipamentos
Route::resource('/maceio-stakes/tabuleiro-stake/equipment-rents', 'EquipmentRentController');

//Indicar para chamados
Route::resource('/maceio-stakes/tabuleiro-stake/calleds', 'CalledController');

//Agendas de reuniões
Route::resource('/maceio-stakes/tabuleiro-stake/meetings', 'MeetingController');

//Agenda da Reunião Sacramental
Route::resource('/maceio-stakes/tabuleiro-stake/sacramental-meetings', 'SacramentalMeetingController');
