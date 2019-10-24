package com.warmer.kgmaker;

import com.warmer.kgmaker.dal.IKGraphRepository;
import com.warmer.kgmaker.query.GraphQuery;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.HashMap;

@RunWith(SpringRunner.class)
@SpringBootTest
@EnableAutoConfiguration
public class IKGraphrepositoryTest {

    @Autowired
    private IKGraphRepository kgRepository;

    @Test
    public void getall(){
        GraphQuery graphQuery=new GraphQuery();
        graphQuery.setPageSize(20);
        HashMap<String, Object> getalldomaingraph = kgRepository.getalldomaingraph(graphQuery);
        getalldomaingraph.toString();
    }
}
