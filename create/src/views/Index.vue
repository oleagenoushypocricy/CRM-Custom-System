<template>
    <el-container>

        <el-menu router :default-openeds="['0','1']" id="size">
            <el-submenu v-for="(item,index) in $router.options.routes" :index="index+''" v-if="item.show">
                <template slot="title"><i class="el-icon-setting"></i>{{item.name}}</template>
                <el-menu-item v-for="(item2,index2) in item.children" :index="item2.path"
                :class="$route.path===item2.path?'is-active':''">{{item2.name}}</el-menu-item>
            </el-submenu>
        </el-menu>


            <el-container>
                <el-header style="font-size: 12px">
                    <span style="text-align: center">Believe youself</span>
                    <el-avatar icon="el-icon-user-solid" style="float: right"></el-avatar>

                        <span style="float: right">加油，打工人</span>
                </el-header>
                <el-main>
                    <router-view></router-view>

                </el-main>
            </el-container>


    </el-container>


</template>

<style>



</style>

<script>
    export default {
        data() {
                return{}
        }
    };
</script>