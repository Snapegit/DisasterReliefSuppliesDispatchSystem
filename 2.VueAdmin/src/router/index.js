	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import wuzixuqiu from '@/views/wuzixuqiu/list'
	import wuzidiaodu from '@/views/wuzidiaodu/list'
	import yonghu from '@/views/yonghu/list'
	import diaoduyuan from '@/views/diaoduyuan/list'
	import wuzizhonglei from '@/views/wuzizhonglei/list'
	import wuziruku from '@/views/wuziruku/list'
	import wuzikucun from '@/views/wuzikucun/list'
	import users from '@/views/users/list'
	import wuzichuku from '@/views/wuzichuku/list'
	import diaodujindu from '@/views/diaodujindu/list'
	import yonghuRegister from '@/views/yonghu/register'
	import yonghuCenter from '@/views/yonghu/center'
	import diaoduyuanRegister from '@/views/diaoduyuan/register'
	import diaoduyuanCenter from '@/views/diaoduyuan/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/yonghuCenter',
			name: '用户个人中心',
			component: yonghuCenter
		}
		,{
			path: '/diaoduyuanCenter',
			name: '调度员个人中心',
			component: diaoduyuanCenter
		}
		,{
			path: '/wuzixuqiu',
			name: '物资需求',
			component: wuzixuqiu
		}
		,{
			path: '/wuzidiaodu',
			name: '物资调度',
			component: wuzidiaodu
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/diaoduyuan',
			name: '调度员',
			component: diaoduyuan
		}
		,{
			path: '/wuzizhonglei',
			name: '物资种类',
			component: wuzizhonglei
		}
		,{
			path: '/wuziruku',
			name: '物资入库',
			component: wuziruku
		}
		,{
			path: '/wuzikucun',
			name: '物资库存',
			component: wuzikucun
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/wuzichuku',
			name: '物资出库',
			component: wuzichuku
		}
		,{
			path: '/diaodujindu',
			name: '调度进度',
			component: diaodujindu
		}
		]
	},
	{
		path: '/yonghuRegister',
		name: '用户注册',
		component: yonghuRegister
	},
	{
		path: '/diaoduyuanRegister',
		name: '调度员注册',
		component: diaoduyuanRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
