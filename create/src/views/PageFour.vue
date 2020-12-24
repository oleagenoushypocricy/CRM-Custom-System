<template>
    <el-form style="width: 60%" :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
        <el-form-item label="订单标题" prop="name">
            <el-input v-model="ruleForm.name"></el-input>
        </el-form-item>
        <el-form-item label="订单客户" prop="custom">
            <el-input v-model="ruleForm.custom"></el-input>
        </el-form-item>
        <el-form-item label="收货地址" prop="address">
            <el-input v-model="ruleForm.address"></el-input>
        </el-form-item>
        <el-form-item label="电话" prop="phone">
            <el-input v-model="ruleForm.phone"></el-input>
        </el-form-item>
        <el-form-item label="下单时间" prop="time">
            <el-input v-model="ruleForm.time"></el-input>
        </el-form-item>
        <el-form-item label="员工" prop="worker">
            <el-input v-model="ruleForm.worker"></el-input>
        </el-form-item>
        <el-form-item label="数量" prop="number">
            <el-input v-model="ruleForm.number"></el-input>
        </el-form-item>
        <el-form-item label="状态" prop="state">
            <el-input v-model="ruleForm.state"></el-input>
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
                    name: '',
                    custom: '',
                    address: '',
                    phone: '',
                    time: '',
                    worker: '',
                    number: '',
                    state:''
                },
                rules: {
                    name: [
                        { required: true, message: '请输入订单标题', trigger: 'blur' },
                    ],
                    custom: [
                        { required: true, message: '请输入订单客户', trigger: 'blur' }
                    ],
                    address: [
                        {  required: true, message: '请输入收获地址', trigger: 'blur' }
                    ],
                    phone: [
                        { required: true, message: '请输入电话', trigger: 'blur' }
                    ],
                    time: [
                        {  required: true, message: '请输入下单方式', trigger: 'blur' }
                    ],
                    worker: [
                        { message: '请输入员工', trigger: 'blur' }
                    ],
                    number: [
                        { required: true, message: '请输入数量', trigger: 'blur' }
                    ],
                    state: [
                        { required: true, message: '请输入状态', trigger: 'blur' }
                    ]
                }
            };
        },
        methods: {
            submitForm(formName) {
                const _this = this
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        axios.post('http://localhost:8181/deal/save',this.ruleForm).then(function (resp) {
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
                                _this.$router.push("/PageThree")
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