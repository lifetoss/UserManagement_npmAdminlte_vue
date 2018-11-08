
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');
import moment from 'moment';
// this all function we created are global function we can access from anyway 

//for form validation
import { Form, HasError, AlertError } from 'vform'
// with the help of this we can access form from every place of our app
window.Form = Form;
Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)


//this is sweetalert2
import swal from 'sweetalert2'
window.swal = swal;
// defining position of toaster
const toast = swal.mixin({
	toast:true,
	position: 'top-end',
	showConfirmButton: false,
	timer:3000
});
window.toast = toast;	//making a function of toast now we can call it my name toast


//this vue progressbar 
// $ npm install vue-progressbar
import VueProgressBar from 'vue-progressbar'
Vue.use(VueProgressBar, {
	color:'rgb(143, 255, 199)',
	failedColor:'red',
	height:'2px'
})



import VueRouter from 'vue-router'
Vue.use(VueRouter)

let routes = [
  { path: '/dashboard', component: require('./components/Dashboard.vue') },
  { path: '/developer', component: require('./components/Developer.vue') },
  { path: '/users', component: require('./components/Users.vue') },
  { path: '/profile', component: require('./components/Profile.vue') }
]

const router = new VueRouter({
	mode:'history',   //pre home/profile now only /profile
  routes // short for `routes: routes`
})

// filter to make upercase
Vue.filter('upText', function(text){
	//return text.toUpperCase()
	return text.charAt(0).toUpperCase() + text.slice(1)
});

// for this date filter we have add momentjs
// npm install moment --save 
// and add this at top of ur page import moment from 'moment';
// here moment is not a funtion so we have to put created in moment
Vue.filter('myDate', function(created){
	return moment(created).format('MMMM Do YYYY');
});


// getting data from server or refreshing using this me global funtion
let Fire = new Vue();
window.Fire = Fire;
// or short way
//window.Fire = new Vue();


//laravel passport of api auth
// use code
// these are global component now we can access it from anyway
Vue.component(
    'passport-clients',
    require('./components/passport/Clients.vue')
);
Vue.component(
    'passport-authorized-clients',
    require('./components/passport/AuthorizedClients.vue')
);
Vue.component(
    'passport-personal-access-tokens',
    require('./components/passport/PersonalAccessTokens.vue')
);



/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
Vue.component('example-component', require('./components/ExampleComponent.vue'));

const app = new Vue({
    el: '#app',
    router
});
