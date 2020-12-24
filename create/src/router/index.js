import Vue from 'vue'
import VueRouter from 'vue-router'
import PageOne from '../views/PageOne.vue'
import PageTwo from '../views/PageTwo.vue'
import PageThree from '../views/PageThree.vue'
import PageFour from  '../views/PageFour.vue'
import BookUpdate from  '../views/BookUpdate'
import PageFive from "../views/PageFive.vue";
import PageSix from  '../views/PageSix.vue'
import Index from "../views/Index.vue";
import loginRegister from "../views/loginRegister.vue"




Vue.use(VueRouter)

const routes = [

  {
    path:'/',
    name:'login',
    component: loginRegister
  },
  {
    show: true,
    path: "/Index",
    name: "CRM用户管理系统",
    component: Index,
    children: [


      {
        path: "/PageOne",
        name: " 用户信息管理",
        component: PageOne
      },
      {
        path: "/PageTwo",
        name: "用户添加",
        component: PageTwo
      },
      {
        path: "/PageThree",
        name: "活动管理",
        component: PageThree
      },
      {
        path: "/PageFour",
        name: "活动添加",
        component: PageFour
      },
      {
        path: "/PageFive",
        name: "通知管理",
        component: PageFive

      },
      {
        path: "/PageSix",
        name:"通知添加",
        component: PageSix
      },

      {
        show:false,
        path: '/update',
        component : BookUpdate
      }
    ]
  },

  ]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
