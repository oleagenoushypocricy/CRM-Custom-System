<template>
    <el-form style="width: 60%" :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
        <el-form-item label="编号" prop="name">
            <el-input v-model="ruleForm.id"readonly></el-input>
        </el-form-item>
        <el-form-item label="姓名" prop="name">
            <el-input v-model="ruleForm.name"></el-input>
        </el-form-item>
        <el-form-item label="来源" prop="source">
            <el-input v-model="ruleForm.source"></el-input>
        </el-form-item>
        <el-form-item label="工作行业" prop="work">
            <el-input v-model="ruleForm.work"></el-input>
        </el-form-item>
        <el-form-item label="客户等级" prop="level">
            <el-input v-model="ruleForm.level"></el-input>
        </el-form-item>
        <el-form-item label="联系方式" prop="tel">
            <el-input v-model="ruleForm.tel"></el-input>
        </el-form-item>
        <el-form-item label="固定电话" prop="phone">
            <el-input v-model="ruleForm.phone"></el-input>
        </el-form-item>
        <el-form-item label="编码" prop="code">
            <el-input v-model="ruleForm.code"></el-input>
        </el-form-item>
        <el-form-item label="地址" prop="address">
            <el-input v-model="ruleForm.address"></el-input>
        </el-form-item>


        <el-form-item>
            <el-button type="primary" @click="submitForm('ruleForm')">提交</el-button>
            <el-button @click="resetForm('ruleForm')">重置</el-button>
        </el-form-item>
    </el-form>
</template>

<script>
    export default {
        data() {
            return {
                ruleForm: {
                    id:'',
                    name: '',
                    source: '',
                    work: '',
                    level: '',
                    tel: '',
                    phone: '',
                    code: '',
                    address: ''
                },
                rules: {
                    name: [
                        { required: true, message: '请输入活动名称', trigger: 'blur' },
                    ],
                    source: [
                        { required: true, message: '请输入居住地', trigger: 'blur' }
                    ],
                    work: [
                        {  required: true, message: '请输入工作行业', trigger: 'blur' }
                    ],
                    level: [
                        { required: true, message: '请输入等级', trigger: 'blur' }
                    ],
                    tel: [
                        {  required: true, message: '请输入联系方式', trigger: 'blur' }
                    ],
                    phone: [
                        { message: '请输入固定电话', trigger: 'blur' }
                    ],
                    code: [
                        { required: true, message: '请输入编码', trigger: 'blur' }
                    ],
                    address: [
                        { required: true, message: '请输入家庭住址', trigger: 'blur' }
                    ]
                }
            };
        },
        methods: {
            submitForm(formName) {
                const _this = this
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        axios.post('http://localhost:8181/custom/save',this.ruleForm).then(function (resp) {
                            if(resp.data == 'success'){
                                _this.$alert('用户信息修改成功', '消息', {
                                    confirmButtonText: '确定',
                                    callback: action => {
                                        this.$message({
                                            type: 'info',
                                            message: `action: ${ action }`
                                        });
                                    }
                                });
                                _this.$router.push("/PageOne")
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
            },
        },
        created() {
            const _this = this;
            axios.get('http://localhost:8181/custom/findById/'+this.$route.query.id).then(function (resp) {
                _this.ruleForm = resp.data
            })
        }
    }
</script>