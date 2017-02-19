<?php

namespace api\modules\v1\controllers;
use Yii;
use yii\rest\ActiveController;
use yii\base\ErrorException;

use api\modules\v1\models\Borrower;
// use yii\filters\auth\HttpBasicAuth;
// use yii\filters\auth\HttpBearerAuth;
use yii\filters\auth\QueryParamAuth;
/**
 * Loan Controller API
 *
 */
class LoanController extends ActiveController
{       

	    public $modelClass = 'api\modules\v1\models\Loan';



	// 	public function behaviors()
	// {  
	// 	'formats' => [
 //                  'application/json' => Response::FORMAT_JSON,
 //              ],
	// 	// $request = Yii::$app->request;
	//  //   $behaviors = parent::behaviors();
 //  //       $behaviors['authenticator'] = [
 //  //           'class' => QueryParamAuth::className()   
 //  //       ]; 
 //  //       return $behaviors;
	// }


  


    public function actionBorrower()
    {  
        $request = Yii::$app->request;
        $loan_id = $request->get('id');
        return Borrower::findOne($loan_id);
    }


}