<?php

Route::group(['middleware'=>'web'], function(){
        
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
    Route::get('/adm/users/create', 'UserController@create')->name('users.create');
    Route::post('/adm/users/create', 'UserController@store');
    //calendar
    Route::resource('/stakes/calendars', 'CalendarController');
    Route::get('/stakes/calendars/print/imprimir','CalendarController@imprimir')->name('calendars.print.imprimir');
    //interview
    Route::resource('/stakes/interviews', 'InterviewController');
    //caravan
    Route::resource('/stakes/caravans', 'CaravanController');
    //caravanUser
    Route::resource('/stakes/caravan-users', 'CaravanUserController');
    Route::get('/stakes/caravan-users/{caravanId}/create-caravan-user', 'CaravanUserController@createCaravanUser')->name('caravan-users.create-caravan-user');
    Route::get('/stakes/caravan-users/{caravanId}/create-caravan-user-kid', 'CaravanUserController@createCaravanUserKid')->name('caravan-users.create-caravan-user-kid');
    Route::get('/stakes/caravan-users/{caravanId}/show-print', 'CaravanUserController@showPrint')->name('caravan-users.show-print');

    //Stakes
    Route::get('/stakes/index', 'StakeController@index')->name('stakes.index');
    
    //Perfis e usuarios
    Route::resource('/adm/role-users', 'RoleUserController');
    
    //Cadastro de equipamentos
    Route::resource('/stakes/equipments', 'EquipmentController');
    
    //Aluguel de equipamentos
    Route::resource('/stakes/equipment-rents', 'EquipmentRentController');
    
    //Indicar para chamados
    Route::resource('/stakes/calleds', 'CalledController');
    
    //Agendas de reuniões
    Route::resource('/stakes/meetings', 'MeetingController');
    
    //Agenda da Reunião Sacramental
    Route::resource('/stakes/sacramental-meetings', 'SacramentalMeetingController');
    
    //Contato
    Route::resource('/stakes/contacts', 'ContactController');
    
    //Conselor
    Route::get('/conselor/index','ConselorController@index')->name('conselor.index');
});