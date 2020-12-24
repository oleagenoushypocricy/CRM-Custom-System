<template>
  <div>
    <el-table
            :data="tableData"
            border
            style="width: 100%">
      <el-table-column
              fixed
              prop="id"
              label="通知编号"
              width="120">
      </el-table-column>
      <el-table-column
              prop="title"
              label="通知标题"
              width="120">
      </el-table-column>
      <el-table-column
              prop="detail"
              label="通知内容"
              width="120">
      </el-table-column>
      <el-table-column
              prop="time"
              label="发布通知的时间"
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
        axios.delete('http://localhost:8181/inform/deleteById/'+row.id).then(function (resp) {

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
        axios.get('http://localhost:8181/inform/findAll/'+currentPage+'/6').then(function (resp) {
          _this.tableData = resp.data.content
          _this.total=resp.data.totalElements
        })
      },
    },
    created() {
      const _this = this
      axios.get('http://localhost:8181/inform/findAll/1/6').then(function (resp) {
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