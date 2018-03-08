import Vue from 'vue';
import Router from 'vue-router';
import HelloWorld from '@/components/HelloWorld';
import ContactUs from '@/components/ContactUs';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld,
    },
    {
      path: '/contactus',
      name: 'ContactUs',
      component: ContactUs,
    },
  ],
});
