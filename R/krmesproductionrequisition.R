

#' Title 预览数据
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples viewsalaryserver()  
krmesproductionrequisitionsrcserver <- function(input,output,session,dms_token) {

  
  shiny::observe({
    shiny::observeEvent(input$btn_krmesproductionrequisitionsrc_view,
                        {
                            sql = 'select * from rds_kr_mes_src_productionrequisition'
                            
                            data = tsda::sql_select2(token = dms_token, sql = sql)
                            names(data) = c('单据编号',
                                            '产品编码',
                                            '领料人',
                                            '单据类型',
                                            '仓管员',
                                            '日期',
                                            '单据状态',
                                            '发料组织',
                                            '生产组织',
                                            '创建人',
                                            '创建日期',
                                            '修改人',
                                            '修改日期',
                                            '审核人',
                                            '审核日期',
                                            '作废人',
                                            '作废日期',
                                            '作废状态',
                                            '物料编码',
                                            '车间',
                                            '单位',
                                            '成本价',
                                            '总成本',
                                            '申请数量',
                                            '实发数量',
                                            '仓库',
                                            '仓位',
                                            '批号',
                                            'BOM版本',
                                            '辅助属性',
                                            '保管者类型',
                                            '保管者',
                                            '库存状态',
                                            '生产日期',
                                            '有效期至',
                                            '系统源单类型',
                                            '主库存单位',
                                            '系统源单编号',
                                            '主库存单位实发数量',
                                            '系统源单行号',
                                            '生产订单编号',
                                            '辅库存单位',
                                            '辅库存单位实发数量',
                                            '生产订单行号',
                                            '工序号',
                                            '业务源单类型',
                                            '作业',
                                            '业务源单编号',
                                            '业务源单行号',
                                            '退料选单数量',
                                            '跨法人交易',
                                            'VMI业务',
                                            '需求来源',
                                            '需求单据',
                                            '需求单据行号',
                                            '倒冲来源',
                                            '货主含组织',
                                            '业务来源类型',
                                            '直送标识',
                                            '库存刷新日期',
                                            '可用库存',
                                            '基本单位可用库存数量',
                                            '转出退料单标识',
                                            '转出退料单号',
                                            '转出退料单内码',
                                            '转出退料单分录内码',
                                            '转出退料单行号',
                                            '生产退料检验',
                                            '基本单位生产退料请检选单数量',
                                            '生产退料请检选单数量',
                                            '组织间结算跨法人标识',
                                            '内部订单号'
                                            
                            )
                            #显示数据
                            tsui::run_dataTable2(id = 'krmesproductionrequisitionsrc_view_data', data = data)
                            
                            
                 
                          
                        })
    
  })
}



#' Title 后台处理总函数
#'
#' @param input 输入
#' @param output 输出
#' @param session 会话
#' @param dms_token 口令
#'
#' @return 返回值
#' @export
#'
#' @examples HrvServer()
krmesproductionrequisitionsrcServer <- function(input,output,session,dms_token) {
  #预览数据
  krmesproductionrequisitionsrcserver(input,output,session,dms_token)

}
