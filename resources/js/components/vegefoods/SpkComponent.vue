<template>
	<div class="col-sm-6 col-md-12 col-lg-6">
        <a href="#" @click="dialog.form = true" class="btn btn-md btn-block btn-primary mb-3" id="btn-pesan" data-toggle="modal" data-target="#pesanMobilModal">Saran Pembelian</a>
        <v-dialog
          v-model="dialog.form"
          width="500"
          transition="dialog-transition"
        >
          <v-card>
            <v-card-text>
                <v-form>
                    <v-text-field label="Ambil dari tahun" v-model="request.year_start"></v-text-field>
                    <v-text-field label="Ambil sampai tahun" v-model="request.year_end"></v-text-field>
                    <v-text-field label="Budget Minimal" v-model="request.budget_start"></v-text-field>
                    <v-text-field label="Budget Maksimal" v-model="request.budget_end"></v-text-field>
                    <v-btn text @click="search()" :loading="loading" :disabled="loading">Submit</v-btn>
                </v-form>
            </v-card-text>
          </v-card>
        </v-dialog>

        <v-dialog
          v-model="dialog.result"
          width="500"
          transition="dialog-transition"
        >
            <v-card>
                <v-card-text>
                    <v-list>
                    <v-subheader>Mobil Pilihan Kami</v-subheader>
                    <v-list-item-group color="primary">
                        <v-list-item v-for="productmodel in productmodels" :key="productmodel.id" @click="open(productmodel.id)">
                        <v-list-item-icon>
                            <v-img width="50" :src="`/storage/${productmodel.image}`"></v-img>
                        </v-list-item-icon>
                        <v-list-item-content>
                            <v-list-item-title>{{productmodel.name}}</v-list-item-title>
                        </v-list-item-content>
                        </v-list-item>
                    </v-list-item-group>
                    </v-list>
                </v-card-text>
            </v-card>
        </v-dialog>
    </div>
</template>

<script>
export default {

  name: 'OrderComponent',

  data() {
    return {
        dialog: {
            form:false,
            result: false
        },
        loading:false,
        request: {},
        productmodels:[]
    };
  },
  methods:{
      search(){
          return new Promise((resolve,reject)=>{
              this.loading = true
              axios.post('/api/v1/productmodels/search',this.request).then(res=>{
                  this.loading = false
                  this.dialog.form = false
                  this.dialog.result = true
                  this.productmodels = res.data
              }).catch(err=>{
                  this.loading = false
              })
          })
      },
      open(id){
          window.location.href=`/productmodel/${id}`
      }
  }
};
</script>

<style lang="css" scoped>
</style>
