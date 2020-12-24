<template>
    <el-form style="width: 60%" :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
        <el-form-item label="通知标题" prop="title">
            <el-input v-model="ruleForm.title"></el-input>
        </el-form-item>
        <el-form-item label="通知内容" prop="detail">
            <el-input v-model="ruleForm.detail"></el-input>
        </el-form-item>
        <el-form-item label="发布时间" prop="time">
            <el-input v-model="ruleForm.time"></el-input>
        </el-form-item>



        <el-form-item>
            <el-button type="primary" @click="submitForm('ruleForm')">立即创建</el-button>
            <el-button @click="resetForm('ruleForm')">重置</el-button>
        </el-form-item>
    </el-form>
</template>

<script>
    export default {
        data() {
            return {
                ruleForm: {
                    title:'',
                    detail:'',
                    time:''
                },
                rules: {
                    title: [
                        { required: true, message: '请输入通知标题', trigger: 'blur' },
                    ],
                    detail: [
                        { required: true, message: '请输入通知内容', trigger: 'blur' }
                    ],
                    time: [
                        {  required: true, message: '请输入发布通知', trigger: 'blur' }
                    ],

                }
            };
        },
        methods: {
            submitForm(formName) {
                const _this = this
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        axios.post('http://localhost:8181/inform/save',this.ruleForm).then(function (resp) {
                            if(resp.data == 'success'){
                                _this.$alert('用户添加成功', '消息', {
                                    confirmButtonText: '确定',
                                    callback: action => {
                                        this.$message({
                                            type: 'info',
                                            message: `action: ${ action }`
                                        });
                                    }
                                });
                                _this.$router.push("/PageFive")
                            }
                        })
                    } else {
                        console.log('error submit!!');
                        return false;
                    }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
            }
        }
    }
</script>