<?php 

namespace api\modules\v1\models;

use \yii\db\ActiveRecord;
/**
 * Loan Model
 *
 */
class Loan extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'loans';
    }

    /**
     * @inheritdoc
     */
    public function fields() {
        return [ 'Amount'=>'amount',
                 'Status'=> 'status',
                 'Amount Left'=> 'amount_left',
                 'Interest Rate'=>'interest_rate',
                 'Purpose'=>'purpose',
                 'Tenure'=>'tenure',
                 'Location'=>'location'];
    }

    public static function primaryKey()
    {
        return ['loan_id'];
    }

    /**
     * Define rules for validation
     */
    public function rules()
    {
        return [
            [[ 'amount','interest_rate','purpose','tenure','location'], 'required'],
            [['status'],'default','value'=>0],
            [['amount_left'],'default','value'=>function($model) {
                     return $model->amount;
                  },],
            [['amount','interest_rate','tenure','status','amount_left'],'number'],
        ];
    }

   
}

