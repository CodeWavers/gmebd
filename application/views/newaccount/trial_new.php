<?php
$GLOBALS['TotalIncome']= 0;
$GLOBALS['TotalAssertF']   = 0;
$GLOBALS['TotalLiabilityF']= 0;

$GLOBALS['TotalExpence']= 0;
function AssertCoa($HeadName,$HeadCode,$GL,$oResultAsset,$Visited,$value,$dtpFromDate,$dtpToDate,$check){

    $CI =& get_instance();
//echo '<pre>';print_r($HeadName);exit();

    if($value==1)
    {
        ?>
        <tr>
            <td colspan="3" class="profilossphead"><?php echo $HeadName;?></td>
        </tr>

        <?php
    }
    elseif($value>1)
    {
        $COAID=$HeadCode;
//        if($check)
//        {
//            $sqlF=$CI->accounts_model->trial_firstquery($dtpFromDate,$dtpToDate,$COAID);
// if ($result>!0)
//        }
//        else
//        {
           $sqlF= $CI->accounts_model->trial_secondquery($dtpFromDate,$dtpToDate,$COAID);
       // }
        $q1 = $CI->db->query($sqlF);
        $oResultAmountPreF = $q1->row();


      if($oResultAmountPreF->total_debit != 0 || $oResultAmountPreF->total_credit != 0){
          $TotalCredit=0;
          $TotalDebit=0;
        if($oResultAmountPreF->total_debit > $oResultAmountPreF->total_credit)
        {
            $TotalCredit=0;
            $TotalDebit=0;


            ?>
            <tr>

                <td align="left" class="profitlossbranchead <?php echo  ($value<=3?" font-bold ":" ");?>"  font-size="<?php echo (int)(16-$value*1.5).'px'; ?>"><font size="+1"><?php echo ($value>=3?"&nbsp;&nbsp;":""). $HeadName; ?></font></td>

                <td align="right" class="profitlossbrancheadamount"><?php
                    $TotalDebit += $oResultAmountPreF->total_debit-$oResultAmountPreF->total_credit;
                    echo number_format($oResultAmountPreF->total_debit-$oResultAmountPreF->total_credit,2);
                    ?>
                </td>

                <td align="right" class="profitlossbrancheadamount"><?php
                    echo number_format('0.00',2);?></td>

            </tr>
            <?php
        }else
        {
            ?>

            <tr>
                <td align="left" class="profitlossbranchead <?php echo  ($value<=3?" font-bold ":" ");?>"  font-size="<?php echo (int)(20-$value*1.5).'px'; ?>"><font size="+1"><?php echo ($value>=3?"&nbsp;&nbsp;":""). $HeadName; ?></font></td>
                <td align="right" class="profitlossbrancheadamount"><?php
                    echo number_format('0.00',2);?></td>
                <td align="right" class="profitlossbrancheadamount"><?php
                    $TotalCredit += $oResultAmountPreF->total_credit-$oResultAmountPreF->total_debit;
                    echo number_format($oResultAmountPreF->total_credit-$oResultAmountPreF->total_debit,2);
                    ?>
                </td>

            </tr>


            <?php


        }
        }
    }
    for($i=0;$i<count($oResultAsset);$i++)
    {
        if (!$Visited[$i]&&$GL==1)
        {
            if ($HeadName==$oResultAsset[$i]->PHeadName)
            {
                $Visited[$i]=false;
                AssertCoa($oResultAsset[$i]->HeadName,$oResultAsset[$i]->HeadCode,$oResultAsset[$i]->IsGL,$oResultAsset,$Visited,$value+1,$dtpFromDate,$dtpToDate,$check);
            }
        }
    }
//


}




?>

<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('accounts') ?></h1>
            <small>Trial Balance</small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('accounts') ?></a></li>
                <li class="active">Trial Balance</li>
            </ol>
        </div>
    </section>

    <section class="content">

        <div class="row">
            <div class="col-sm-12 col-md-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4></h4>
                        </div>
                    </div>
                    <div id="printArea">
                        <div class="panel-body">
                            <table class="table" width="100%" class="table_boxnew" cellpadding="5" cellspacing="0">
                                <tr>
                                    <td colspan="4" align="center"><h3><b>Trial Balance of Till<br/> <?php echo $today ?> </b></h3></td>
                                </tr>
                                <tr>
                                    <td width="85%" bgcolor="#FFFFFF" align="center"><h4><b><?php echo display('particulars')?></b></h4></td>
                                    <td width="20%" bgcolor="#FFFFFF" align="center"><h4><b>Debit</b></h4></td>
                                    <td width="20%" bgcolor="#FFFFFF" align="center"><h4><b>Credit</b></h4></td>
                                </tr>

                                <?php

                                for($i=0;$i<count($oResultAsset);$i++)
                                {
                                    $Visited[$i] = false;
                                }

                                AssertCoa("COA","0",1,$oResultAsset,$Visited,0,$dtpFromDate,$dtpToDate,0);

                                $TotalAssetF=$GLOBALS['TotalAssertF'];
                                ?>


                                <tr>
                                    <td colspan="4" align="right"></td>
                                </tr>


                                <?php

                                for($i=0;$i<count($oResultIncome);$i++)
                                {
                                    $Visited[$i] = false;
                                }

                                AssertCoa("COA","0",1,$oResultIncome,$Visited,0,$dtpFromDate,$dtpToDate,0);

                                $TotalAssetF=$GLOBALS['TotalAssertF'];
                                ?>


                                <tr>
                                    <td colspan="4" align="right"></td>
                                </tr>


                                    <?php
                                    for($i=0;$i<count($oResultExpence);$i++)
                                    {
                                        $Visited[$i] = false;
                                    }
                                    $GLOBALS['TotalExpence']=0;
                                    AssertCoa("COA","0",1,$oResultExpence,$Visited,0,$dtpFromDate,$dtpToDate,2);

                                 //   $TotalExpence=$GLOBALS['TotalExpence'];

                                    // echo '<pre>';print_r($oResultExpence);exit();
                                    ?>




                                <tr>
                                    <td colspan="4" align="right"></td>
                                </tr>



                                <?php
                                for($i=0;$i<count($oResultLiability);$i++)
                                {
                                    $Visited[$i] = false;
                                }
                                $GLOBALS['TotalLiability']=0;
                                AssertCoa("COA","0",1,$oResultLiability,$Visited,0,$dtpFromDate,$dtpToDate,1);
                                $TotalLibilityF=$GLOBALS['TotalLiabilityF'];

                                // echo '<pre>';print_r($oResultLiability);exit();
                                ?>

                                <tr>
                                    <td colspan="3" align="right"></td>
                                </tr>


                                <tr bgcolor="#FFFFFF">
                                    <td align="right"><strong>Total</strong></td>
                                    <td align="right" class="totalliability"><strong ><?php echo number_format($total[0]['total_debit'],2); ?></strong></td>
                                    <td align="right" class="totalliability"><strong ><?php echo number_format($total[0]['total_credit'],2); ?></strong></td>

<!--                                    <td align="right" class="totalliability"><strong >--><?php //echo number_format($TotalDebit,2); ?><!--</strong></td>-->
<!--                                    <td align="right" class="totalliability"><strong >--><?php //echo number_format($TotalCredit,2); ?><!--</strong></td>-->
                                </tr>
                                <tr>
                                    <td colspan="3" align="right"></td>
                                </tr>
                            </table>


                            <table width="100%" cellpadding="1" cellspacing="20">
                                <tr>
                                    <td width="20%" class="footersignature" align="center"><?php echo display('prepared_by')?></td>
                                    <td width="20%" class="footersignature" align="center"><?php echo display('accounts')?></td>
                                    <td width="20%" class="footersignature" align="center"><?php echo display('authorized_signature')?></td>
                                    <td  width="20%" class="footersignature" align='center'><?php echo display('chairman')?></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="text-center" id="print">
                        <input type="button" class="btn btn-warning" name="btnPrint" id="btnPrint" value="Print" onclick="printDiv('printArea');"/>
                    </div>
                </div>
            </div>


        </div>
    </section>
</div>

