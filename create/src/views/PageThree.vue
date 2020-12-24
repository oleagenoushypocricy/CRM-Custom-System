<template>
    <div>
        <el-table
                :data="tableData"
                border
                style="width: 100%">
            <el-table-column
                    fixed
                    prop="id"
                    label="订单编号"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="name"
                    label="订单标题"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="custom"
                    label="订单客户"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="address"
                    label="收货地址"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="phone"
                    label="收货人的电话"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="time"
                    label="下单时间"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="worker"
                    label="处理订单的员工"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="number"
                    label="订购的数量"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="state"
                    label="订单状态"
                    width="120">
            </el-table-column>
            <el-table-column
                    fixed="right"
                    label="修改"
                    width="100">
                <template slot-scope="scope">
                    <el-button @click="edit(scope.row)" type="text" size="small"><el-button type="primary" icon="el-icon-edit" circle size="small"></el-button></el-button>
                    <el-button @click="deleteCustom(scope.row)" type="text" size="small"> <el-button type="danger" icon="el-icon-delete" circle size="small"></el-button></el-button>


                </template>

            </el-table-column>
        </el-table>
        <el-main></el-main>
        <el-pagination
                background
                layout="prev, pager, next"
                :page-size="6"
                :total="total"
                @current-change="page">
        </el-pagination>
    </div>

</template>


<script>
    export default {
        methods: {
            deleteCustom(row){
                const _this = this
                axios.delete('http://localhost:8181/deal/deleteById/'+row.id).then(function (resp) {

                    _this.$alert("用户"+row.name+"删除成功",

                        {
                            confirmButtonText:'确定',
                            callback :action =>{
                                window.location.reload()

                            }

                        })


                })
            },
            edit(row){
                this.$router.push({
                    path: '/update',
                    query:{
                        id:row.id
                    }
                })
            },
            page(currentPage)
            {
                const _this = this
                axios.get('http://localhost:8181/deal/findAll/'+currentPage+'/6').then(function (resp) {
                    _this.tableData = resp.data.content
                    _this.total=resp.data.totalElements
                })
            },
        },
        created() {
            const _this = this
            axios.get('http://localhost:8181/deal/findAll/1/6').then(function (resp) {
                _this.tableData = resp.data.content
                _this.total=resp.data.totalElements

            })
        },
        data() {
            return {
                total: null,
                tableData: null
            }
        }

    }
</script>

<style scoped>

</style>