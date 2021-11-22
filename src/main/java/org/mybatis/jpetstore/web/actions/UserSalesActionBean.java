package org.mybatis.jpetstore.web.actions;

import java.util.List;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.SessionScope;
import net.sourceforge.stripes.integration.spring.SpringBean;
import javax.servlet.http.HttpSession;

/**
 * The Class UserSalesActionBean.
 *
 * @author Eduardo Macarron
 */
@SessionScope
public class UserSalesActionBean extends AbstractActionBean {

    private static final long serialVersionUID = 5849523372175050635L;

    private static final String SALES_LIST = "/WEB-INF/jsp/user_sales/UserSalesList.jsp";
    private static final String SELECT_SALES = "/WEB-INF/jsp/user_sales/SelectSalesForm.jsp";
    private static final String INSERT_SALES = "/WEB-INF/jsp/user_sales/InsertSalesForm.jsp";
    private static final String EDIT_SALES = "/WEB-INF/jsp/user_sales/EditSalesForm.jsp";
    private static final String INFO_SALES = "/WEB-INF/jsp/user_sales/InfoSales.jsp";
    private static final String INSERT_ADOPT = "/WEB-INF/jsp/user_sales/InsertAdoptForm.jsp";
    private static final String VIEW_ADOPT_LIST_ADT = "/WEB-INF/jsp/user_sales/ViewAdoptListForAdopter.jsp";
    private static final String VIEW_ADOPT_ADT = "/WEB-INF/jsp/user_sales/ViewAdoptForAdopter.jsp";
    private static final String VIEW_ADOPT_LIST_SL = "/WEB-INF/jsp/user_sales/ViewAdoptListForSales.jsp";
    private static final String VIEW_ADOPT_SL = "/WEB-INF/jsp/user_sales/ViewAdoptForSales.jsp";

    /**
     * View Sales List
     *
     * @return the resolution
     */
    @DefaultHandler
    public Resolution viewSalesList() {
        return new ForwardResolution(SALES_LIST);
    }

    /**
     * Select Sales Form
     *
     * @return the resolution
     */
    public Resolution selectSalesForm(){
        return new ForwardResolution(SELECT_SALES);
    }

    /**
     * Insert Sales Form
     *
     * @return the resolution
     */
    public Resolution insertSalesForm(){
        return new ForwardResolution(INSERT_SALES);
    }

    /**
     * Edit Sales Form
     *
     * @return the resolution
     */
    public Resolution editSalesForm(){
        return new ForwardResolution(EDIT_SALES);
    }

    /**
     * View Sales Info
     *
     * @return the resolution
     */
    public Resolution infoSales(){
        return new ForwardResolution(INFO_SALES);
    }

    /**
     * Insert Adopt Form
     *
     * @return the resolution
     */
    public Resolution insertAdoptForm(){
        return new ForwardResolution(INSERT_ADOPT);
    }

    /**
     * View Adopt List For Adopter
     *
     * @return the resolution
     */
    public Resolution viewAdoptListAdt(){
        return new ForwardResolution(VIEW_ADOPT_LIST_ADT);
    }

    /**
     * View Adopt For Adopter
     *
     * @return the resolution
     */
    public Resolution viewAdoptAdt(){
        return new ForwardResolution(VIEW_ADOPT_ADT);
    }

    /**
     * View Adopt List For Sales
     *
     * @return the resolution
     */
    public Resolution viewAdoptListSl(){
        return new ForwardResolution(VIEW_ADOPT_LIST_SL);
    }

    /**
     * View Adopt For Sales
     *
     * @return the resolution
     */
    public Resolution viewAdoptSl(){
        return new ForwardResolution(VIEW_ADOPT_SL);
    }
}