view: co2 {
  sql_table_name: `oil_and_gas.CO2` ;;

  dimension: cement {
    type: number
    sql: ${TABLE}.Cement ;;
  }
###############################################################
  dimension: cementmenos1 {
    type: number
    sql: ${cement} * 0.9 ;;
  }
  dimension: cementmenos05 {
    type: number
    sql: ${cement} * 0.95 ;;
  }
  dimension: cementmas05 {
    type: number
    sql: ${cement} * 1.05 ;;
  }
  dimension: cementmas1 {
    type: number
    sql: ${cement} * 1.1 ;;
  }
###############################################################
  parameter: filtro_cement {
    type: unquoted
    allowed_value: {
      label: "Valor Actual"
      value: "cement1"
    }
    allowed_value: {
      label: "Valor-10%"
      value: "cement09"
    }
    allowed_value: {
      label: "Valor-5%"
      value: "cement095"
    }
    allowed_value: {
      label: "Valor+5%"
      value: "cement105"
    }
    allowed_value: {
      label: "Valor+10%"
      value: "cement11"
    }
  }

  dimension: dim_cement {
    sql: {% if filtro_cement._parameter_value == 'cement1' %}
          ${cement}
        {% elsif filtro_cement._parameter_value == 'cement09' %}
          ${cementmenos1}
        {% elsif filtro_cement._parameter_value == 'cement095' %}
          ${cementmenos05}
        {% elsif filtro_cement._parameter_value == 'cement105' %}
          ${cementmas05}
        {% elsif filtro_cement._parameter_value == 'cement11' %}
          ${cementmas1}
  {% endif %};;
  }
######################################################################################
  dimension: coal {
    type: number
    sql: ${TABLE}.Coal ;;
  }
###############################################################
  dimension: coalmenos1 {
    type: number
    sql: ${coal} * 0.9 ;;
  }
  dimension: coalmenos05 {
    type: number
    sql: ${coal} * 0.95 ;;
  }
  dimension: coalmas05 {
    type: number
    sql: ${coal} * 1.05 ;;
  }
  dimension: coalmas1 {
    type: number
    sql: ${coal} * 1.1 ;;
  }
###############################################################
  parameter: filtro_coal {
    type: unquoted
    allowed_value: {
      label: "Valor Actual"
      value: "coal1"
    }
    allowed_value: {
      label: "Valor-10%"
      value: "coal09"
    }
    allowed_value: {
      label: "Valor-5%"
      value: "coal095"
    }
    allowed_value: {
      label: "Valor+5%"
      value: "coal105"
    }
    allowed_value: {
      label: "Valor+10%"
      value: "coal11"
    }
  }

  dimension: dim_coal {
    sql: {% if filtro_coal._parameter_value == 'coal1' %}
          ${coal}
        {% elsif filtro_coal._parameter_value == 'coal09' %}
          ${coalmenos1}
        {% elsif filtro_coal._parameter_value == 'coal095' %}
          ${coalmenos05}
        {% elsif filtro_coal._parameter_value == 'coal105' %}
          ${coalmas05}
        {% elsif filtro_coal._parameter_value == 'coal11' %}
          ${coalmas1}
  {% endif %};;
  }
######################################################################################
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension: flaring {
    type: number
    sql: ${TABLE}.Flaring ;;
  }
###############################################################
  dimension: flaringmenos1 {
    type: number
    sql: ${flaring} * 0.9 ;;
  }
  dimension: flaringmenos05 {
    type: number
    sql: ${flaring} * 0.95 ;;
  }
  dimension: flaringmas05 {
    type: number
    sql: ${flaring} * 1.05 ;;
  }
  dimension: flaringmas1 {
    type: number
    sql: ${flaring} * 1.1 ;;
  }
###############################################################
  parameter: filtro_flaring {
    type: unquoted
    allowed_value: {
      label: "Valor Actual"
      value: "flaring1"
    }
    allowed_value: {
      label: "Valor-10%"
      value: "flaring09"
    }
    allowed_value: {
      label: "Valor-5%"
      value: "flaring095"
    }
    allowed_value: {
      label: "Valor+5%"
      value: "flaring105"
    }
    allowed_value: {
      label: "Valor+10%"
      value: "flaring11"
    }
  }

  dimension: dim_flaring {
    sql: {% if filtro_flaring._parameter_value == 'flaring1' %}
          ${flaring}
        {% elsif filtro_flaring._parameter_value == 'flaring09' %}
          ${flaringmenos1}
        {% elsif filtro_flaring._parameter_value == 'flaring095' %}
          ${flaringmenos05}
        {% elsif filtro_flaring._parameter_value == 'flaring105' %}
          ${flaringmas05}
        {% elsif filtro_flaring._parameter_value == 'flaring11' %}
          ${flaringmas1}
  {% endif %};;
  }
######################################################################################
  dimension: gas {
    type: number
    sql: ${TABLE}.Gas ;;
  }
###############################################################
  dimension: gasmenos1 {
    type: number
    sql: ${gas} * 0.9 ;;
  }
  dimension: gasmenos05 {
    type: number
    sql: ${gas} * 0.95 ;;
  }
  dimension: gasmas05 {
    type: number
    sql: ${gas} * 1.05 ;;
  }
  dimension: gasmas1 {
    type: number
    sql: ${gas} * 1.1 ;;
  }
###############################################################
  parameter: filtro_gas {
    type: unquoted
    allowed_value: {
      label: "Valor Actual"
      value: "gas1"
    }
    allowed_value: {
      label: "Valor-10%"
      value: "gas09"
    }
    allowed_value: {
      label: "Valor-5%"
      value: "gas095"
    }
    allowed_value: {
      label: "Valor+5%"
      value: "gas105"
    }
    allowed_value: {
      label: "Valor+10%"
      value: "gas11"
    }
  }

  dimension: dim_gas {
    sql: {% if filtro_gas._parameter_value == 'gas1' %}
          ${gas}
        {% elsif filtro_gas._parameter_value == 'gas09' %}
          ${gasmenos1}
        {% elsif filtro_gas._parameter_value == 'gas095' %}
          ${gasmenos05}
        {% elsif filtro_gas._parameter_value == 'gas105' %}
          ${gasmas05}
        {% elsif filtro_gas._parameter_value == 'gas11' %}
          ${gasmas1}
  {% endif %};;
  }
######################################################################################
  dimension: oil {
    type: number
    sql: ${TABLE}.Oil ;;
  }
###############################################################
  dimension: oilmenos1 {
    type: number
    sql: ${oil} * 0.9 ;;
  }
  dimension: oilmenos05 {
    type: number
    sql: ${oil} * 0.95 ;;
  }
  dimension: oilmas05 {
    type: number
    sql: ${oil} * 1.05 ;;
  }
  dimension: oilmas1 {
    type: number
    sql: ${oil} * 1.1 ;;
  }
###############################################################
  parameter: filtro_oil {
    type: unquoted
    allowed_value: {
      label: "Valor Actual"
      value: "oil1"
    }
    allowed_value: {
      label: "Valor-10%"
      value: "oil09"
    }
    allowed_value: {
      label: "Valor-5%"
      value: "oil095"
    }
    allowed_value: {
      label: "Valor+5%"
      value: "oil105"
    }
    allowed_value: {
      label: "Valor+10%"
      value: "oil11"
    }
  }

  dimension: dim_oil {
    sql: {% if filtro_oil._parameter_value == 'oil1' %}
          ${oil}
        {% elsif filtro_oil._parameter_value == 'oil09' %}
          ${oilmenos1}
        {% elsif filtro_oil._parameter_value == 'oil095' %}
          ${oilmenos05}
        {% elsif filtro_oil._parameter_value == 'oil105' %}
          ${oilmas05}
        {% elsif filtro_oil._parameter_value == 'oil11' %}
          ${oilmas1}
  {% endif %};;
  }
#################################################################################
  dimension: other {
    type: number
    sql: ${TABLE}.Other ;;
  }
###############################################################
  dimension: othermenos1 {
    type: number
    sql: ${other} * 0.9 ;;
  }
  dimension: othermenos05 {
    type: number
    sql: ${other} * 0.95 ;;
  }
  dimension: othermas05 {
    type: number
    sql: ${other} * 1.05 ;;
  }
  dimension: othermas1 {
    type: number
    sql: ${other} * 1.1 ;;
  }
###############################################################
  parameter: filtro_other {
    type: unquoted
    allowed_value: {
      label: "Valor Actual"
      value: "other1"
    }
    allowed_value: {
      label: "Valor-10%"
      value: "other09"
    }
    allowed_value: {
      label: "Valor-5%"
      value: "other095"
    }
    allowed_value: {
      label: "Valor+5%"
      value: "other105"
    }
    allowed_value: {
      label: "Valor+10%"
      value: "other11"
    }
  }

  dimension: dim_other {
    sql: {% if filtro_other._parameter_value == 'other1' %}
          ${other}
        {% elsif filtro_other._parameter_value == 'other09' %}
          ${othermenos1}
        {% elsif filtro_other._parameter_value == 'other095' %}
          ${othermenos05}
        {% elsif filtro_other._parameter_value == 'other105' %}
          ${othermas05}
        {% elsif filtro_other._parameter_value == 'other11' %}
          ${othermas1}
  {% endif %};;
  }
#################################################################################
  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }
###########################################################
  dimension: total_dim {
    type: number
    sql: ${dim_cement}+${dim_coal}+${dim_flaring}+${dim_gas}+${dim_oil}+${dim_other} ;;
  }
#########################################################
  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
  }
  measure: total_sum {
    type: sum
    sql: ${cement}+${coal}+${flaring}+${gas}+${oil}+${other} ;;
  }
  measure: total_sum_dim {
    type: sum
    sql: ${dim_cement}+${dim_coal}+${dim_flaring}+${dim_gas}+${dim_oil}+${dim_other} ;;
  }
}
