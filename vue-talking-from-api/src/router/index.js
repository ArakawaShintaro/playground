import Vue from 'vue'
import Router from 'vue-router'
import Top from '@/components/Top'
import Talk from '@/components/Talk'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Top',
      component: Top
    },
    {
      path: '/talk',
      name: 'Talk',
      component: Talk
    }
  ]
})
