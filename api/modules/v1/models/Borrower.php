<?php 

namespace api\modules\v1\models;

use \yii\db\ActiveRecord;
/**
 * Borrower Model
 *
 */
class Borrower extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'borrowers';
    }

    /**
     * @inheritdoc
     */
    public function fields() {
        return [ 'Borrower ID'=>'borrower_id',
                 'Loan ID'=> 'loan_id',
                 'Name'=> 'name',
                 'Age'=>'age',
                 'Location'=>'location',
                 'Cibil Score'=>'cibil_score',
                 'Employment Type'=>'employment_type',
                 'Annual Income'=>'annual_income',
                 'Company'=>'company',
                 ];
    }

    public static function primaryKey()
    {
        return ['borrower_id'];
    }

    /**
     * Define rules for validation
     */
    public function rules()
    {
        return [
          [['loan_id','name','age'], 'required'],
            // [['loan_id','name','age','location','employment_type','annual_income','company','pan_card','bank_account'], 'required'],
            //  [['loan_id','age','bank_account','cibil_score'],'integer'],
        ];
    }

   
}